import sqlite3


# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


def executeSqlQuery(cur, goldQuery, predictedQuery):
    # gold query
    cur.execute(goldQuery)
    result1 = cur.fetchall()
    cur.execute(predictedQuery)
    result2 = cur.fetchall()
    equivalentCount = 0
    total = len(result1)
    accuracy = 0
    if len(result1) >= len(result2):
        for res in result2:
            if res in result1:
                equivalentCount += 1
    else:
        total = len(result2)
        for res in result1:
            if res in result2:
                equivalentCount += 1

    accuracy = equivalentCount * 100 / total
    print("Execution Accuracy " + str(accuracy) + " %")
    # fetch all the data


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    #gold query:
    #SELECT s.sid, s.title FROM songs s, artists a, perform p WHERE a.aid = p.aid AND (a.nationality = 'Canada' OR a.nationality = 'Canadian') AND s.sid = p.sid;
    #predicted query:
    #select s.sid, s.title from songs s, artists a, perform p where s.sid = p.sid and a.aid = p.aid and a.nationality = 'Canada' or a.nationality = 'Canadian'
    goldQuery = input('Gold Query: ')
    predictedQuery = input('Predicted Query: ')
    con = sqlite3.connect("assignment02db.db")
    cur = con.cursor()
    executeSqlQuery(cur, goldQuery, predictedQuery)

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
