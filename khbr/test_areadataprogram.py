import unittest
from khbr.KH2.AreaDataProgram import AreaDataProgram

class Tests(unittest.TestCase):
    def test_make_program(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
        adp = AreaDataProgram(lines)
        output = adp.make_program()
        assert output.split("\n") == lines
    def test_has_command(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
        adp = AreaDataProgram(lines)
        assert adp.has_command("Bgm") == True
        assert adp.has_command("Spawn") == False
        assert adp.has_command("SetProgressFlag") == True
        assert adp.has_command("SetJump") == False
    def test_get_command(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
        adp = AreaDataProgram(lines)
        assert adp.get_command("SetProgressFlag") == "0x1841"
    def test_add_command(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
        adp = AreaDataProgram(lines)
        adp.add_command("Spawn", "0a")
        adp.add_command("Bgm", "999 999")
        adp.add_command("SetProgressFlag", "0x1")
        adp.add_command("SetTest", "abc")
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Spawn 0a",
            "Bgm 999 999",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1",
            "\tSetTest abc"
        ]
    def test_remove_command(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841",
            "\tSetEvent ewww",
            "\tSetTest abc"
        ]
        adp = AreaDataProgram(lines)
        adp.remove_command("Bgm")
        adp.remove_command("SetEvent")
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841",
            "\tSetTest abc"
        ]
    def test_add_packet_spec(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
        adp = AreaDataProgram(lines)
        adp.add_packet_spec()
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "AllocPacket 524288",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
    def test_add_enemy_spec(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
        adp = AreaDataProgram(lines)
        adp.add_enemy_spec()
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "AllocEnemy 2097152",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
    def test_get_mission(self):
        lines = [
            "Program 0x3B",
            "Party W_FRIEND",
            "Mission 0x44 \"AL03_MS103\"",
            "Spawn \"b_40\""
        ]
        adp = AreaDataProgram(lines)
        output = adp.get_mission()
        assert output == "AL03_MS103"
    def test_update_capacity(self):
        lines = [
            "Program 0xBF",
            "Capacity 50",
            "Spawn 3"
        ]
        adp = AreaDataProgram(lines, ispc=True)
        adp.update_capacity(capacity=99)
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Spawn 3"
        ]
        adp = AreaDataProgram(lines, ispc=False)
        adp.update_capacity(capacity=99)
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Capacity 99",
            "Spawn 3"
        ]
        lines = [
            "Program 0xBF",
            "Spawn 3"
        ]
        adp = AreaDataProgram(lines, ispc=True)
        adp.update_capacity(capacity=99)
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Spawn 3"
        ]
    def test_set_jump(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
        adp = AreaDataProgram(lines)
        adp.set_jump(world="AA", room="01", program="02", fadetype="03", jumptype="04", entrance="05")
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841",
            "\tSetJump Type 04 World AA Area 01 Entrance 05 LocalSet 02 FadeType 03"
        ]
    def test_set_open_menu(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841",
            "\tSetPartyMenu 0"
        ]
        adp = AreaDataProgram(lines)
        adp.set_open_menu(True)
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841",
            "\tSetPartyMenu 1"
        ]
        adp.set_open_menu(False)
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841",
            "\tSetPartyMenu 0"
        ]
    def test_remove_event(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetEvent abc",
            "\tSetProgressFlag 0x1841"
        ]
        adp = AreaDataProgram(lines)
        adp.remove_event()
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetProgressFlag 0x1841"
        ]
    def test_set_flags(self):
        lines = [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetEvent abc"
        ]
        adp = AreaDataProgram(lines)
        adp.set_flags(['0x1'])
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetEvent abc",
            "\tSetProgressFlag 0x1"
        ]
        adp.set_flags(['0x2'])
        output = adp.make_program()
        assert output.split("\n") == [
            "Program 0xBF",
            "Bgm 120 120",
            "AreaSettings 7 10",
            "\tSetEvent abc",
            "\tSetProgressFlag 0x2 0x1"
        ]

# Uncomment to run a single test through ipython
ut = Tests()
ut.test_set_flags()
ut.test_get_mission()


# Uncomment to run the actual tests
unittest.main()
