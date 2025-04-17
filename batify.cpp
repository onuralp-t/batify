#include <fstream>
#include <iostream>
#include <string>

void escape(std::string &line)
{
    size_t len = line.length();

    for (size_t i = 0; i < len; ++i)
    {
        switch (line[i])
        {
        case '%':
            line.insert(i, 1, '%');
            ++len;
            ++i;
            break;
        case ':':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '^':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '=':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '&':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '|':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '!':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '>':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '<':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '(':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case ')':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '[':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case ']':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '{':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        case '}':
            line.insert(i, 1, '^');
            ++len;
            ++i;
            break;
        }

        if (len >= (i + 2 + 1) && line[i] == 'r' && line[i + 1] == 'e' && line[i + 2] == 'm')
        {
            line.insert(i, 1, '^');
            ++len;
            ++i;
        }
    }
}

int main(int argc, char *argv[])
{
    if (argc == 1)
    {
        std::cerr << "USAGE: batify <file_to_be_batified>" << '\n';
        return 1;
    }

    if (argc > 2)
    {
        std::cerr << "too many files specified: try `batify <file_to_be_batified>`" << '\n';
        return 1;
    }

    std::string input_file_name = argv[1];

    if (input_file_name.length() >= 2 && input_file_name[0] == '.' && input_file_name[1] == '\\')
    {
        input_file_name = input_file_name.substr(2, input_file_name.length());
    }

    std::ifstream input_file(input_file_name);
    std::ofstream write_output("create_" + input_file_name);

    write_output << "@echo off\n";

    write_output << "> generated_" + input_file_name << " (\n";

    std::string line;
    line.reserve(256);
    while (std::getline(input_file, line))
    {
        escape(line);

        if (line.empty() || line.find_first_not_of(' ') == std::string::npos)
        {
            write_output << "echo." << line << '\n';
            continue;
        }

        write_output << "echo " << line << '\n';
    }

    write_output << ")";

    input_file.close();
    write_output.close();

    return 0;
}