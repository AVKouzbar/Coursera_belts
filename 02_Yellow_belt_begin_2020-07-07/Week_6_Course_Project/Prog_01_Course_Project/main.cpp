#include "database.h"
#include "date.h"
//#include "events.h"
#include "condition_parser.h"
#include "test_runner.h"
#include "test_storage.h"

#include <stdexcept>
#include <sstream>

using namespace std;

Date ParseDate(istream& is){
    string date_str;
    is >> date_str;
    istringstream is1(date_str);

    bool ok = true;

    int year;
    ok = ok && (is1 >> year);
    ok = ok && (is1.peek() == '-');
    is1.ignore(1);

    int month;
    ok = ok && (is1 >> month);
    ok = ok && (is1.peek() == '-');
    is1.ignore(1);

    int day;
    ok = ok && (is1 >> day);
    ok = ok && is1.eof();

    if (!ok) {
        throw logic_error("Wrong date format: " );
    }
    return Date(year, month, day);
}

Date ParseDate(istringstream& is){
    string date_str;
    is >> date_str;
    istringstream is1(date_str);

    bool ok = true;

    int year;
    ok = ok && (is1 >> year);
    ok = ok && (is1.peek() == '-');
    is1.ignore(1);

    int month;
    ok = ok && (is1 >> month);
    ok = ok && (is1.peek() == '-');
    is1.ignore(1);

    int day;
    ok = ok && (is1 >> day);
    ok = ok && is1.eof();

    if (!ok) {
        throw logic_error("Wrong date format: " );
    }
    return Date(year, month, day);
}

string ParseEvent(istream& is) {
    string event;
    getline(is, event);

    auto first = event.find_first_not_of(" ");

    if (first == string::npos)
        return string();

    event.erase(0,first);
    return event;
}

void TestAll();

int main() {
    TestAll();

    Database db;

    for (string line; getline(cin, line); ) {
        istringstream is(line);

        string command;
        is >> command;
        if (command == "Add") {
            const auto date = ParseDate(is);
            const auto event = ParseEvent(is);
            db.Add(date, event);
        } else if (command == "Print") {
            db.Print(cout);
        } else if (command == "Del") {
            auto condition = ParseCondition(is);
            auto predicate = [condition](const Date& date, const string& event) {
                return condition->Evaluate(date, event);
            };
            int count = db.RemoveIf(predicate);
            cout << "Removed " << count << " entries" << endl;
        } else if (command == "Find") {
            auto condition = ParseCondition(is);
            auto predicate = [condition](const Date& date, const string& event) {
                return condition->Evaluate(date, event);
            };

            const auto entries = db.FindIf(predicate);
            for (const auto& entry : entries) {
                cout << entry << endl;
            }
            cout << "Found " << entries.size() << " entries" << endl;
        } else if (command == "Last") {
            try {
                cout << db.Last(ParseDate(is)) << endl;
            } catch (invalid_argument&) {
                cout << "No entries" << endl;
            }
        } else if (command.empty()) {
            continue;
        } else {
            throw logic_error("Unknown command: " + command);
        }
    }

    return 0;
}

void TestParseEvent() {
    {
        istringstream is("event");
        AssertEqual(ParseEvent(is), "event", "Parse event without leading spaces");
    }
    {
        istringstream is("   sport event ");
        AssertEqual(ParseEvent(is), "sport event ", "Parse event with leading spaces");
    }
    {
        istringstream is("  first event  \n  second event");
        vector<string> events;
        events.push_back(ParseEvent(is));
        events.push_back(ParseEvent(is));
        AssertEqual(events, vector<string>{"first event  ", "second event"}, "Parse multiple events");
    }
}

void TestAll() {
    TestRunner tr;
    tr.RunTest(TestParseEvent, "TestParseEvent");
    tr.RunTest(TestParseCondition, "TestParseCondition");
    tr.RunTest(TestEmptyNode, "Test 2 from Coursera");
    tr.RunTest(TestDbAdd, "Test 3(1) from Coursera");
    tr.RunTest(TestDbFind, "Test 3(2) from Coursera");
    tr.RunTest(TestDbLast, "Test 3(3) from Coursera");
    tr.RunTest(TestDbRemoveIf, "Test 3(4) from Coursera");
    tr.RunTest(TestInsertionOrder, "TestInsertionOrder");
    tr.RunTest(TestsMyCustom, "TestsMyCustom");
    tr.RunTest(TestDatabase, "TestDatabase");
}