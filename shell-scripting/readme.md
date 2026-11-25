# 🐚 Bash Scripting Mastery — DevOps Track

> **Goal:** Go from intermediate to production-grade bash scripting for DevOps & CI/CD automation.
> **Shell:** Bash | **Track:** DevOps / Automation / CI-CD
> **Started:** <!-- fill in your start date -->

---

## 📊 Overall Progress

| Phase | Topic | Status | Completed |
|-------|-------|--------|-----------|
| 1 | Solid Foundations | 🔄 In Progress | |
| 2 | Control Flow & Functions | ⬜ Not Started | |
| 3 | Power Tools & Text Processing | ⬜ Not Started | |
| 4 | DevOps & Automation Patterns | ⬜ Not Started | |
| 5 | Advanced & Production-Grade | ⬜ Not Started | |

**Legend:** ✅ Done &nbsp;|&nbsp; 🔄 In Progress &nbsp;|&nbsp; ⬜ Not Started &nbsp;|&nbsp; ❌ Skipped

---

## 🗺️ Roadmap at a Glance

```
Phase 1 (Week 1)      Phase 2 (Week 2)      Phase 3 (Weeks 3-4)
─────────────────     ─────────────────     ─────────────────────
Variables & scope  →  Conditionals       →  grep & regex
Quoting rules         Loops                 sed
I/O & redirection     Functions             awk
Exit codes            Case statements       find & xargs
Arrays                Error handling        sort, cut, uniq
String manipulation   Argument parsing      jq (JSON)
        ↓
Phase 4 (Weeks 5-6)                    Phase 5 (Weeks 7-8)
────────────────────────────           ──────────────────────────
Deployment scripts                     Best practices & shellcheck
CI/CD integration                      Performance & parallelism
Process management                     Testing with bats
File operations                        Advanced bash features
Networking & curl                      Security hardening
Secrets & env vars                     Libraries & project structure
Cloud CLI automation                   Capstone challenges
```

---

## 📘 Phase 1 — Solid Foundations

> **Timeline:** Week 1 &nbsp;|&nbsp; **Status:** 🔄 In Progress

### What you'll learn
Lock in the fundamentals that every other phase builds on — variables, quoting, I/O, exit codes, arrays, and string manipulation.

### Topics & Checklist

#### 1.1 Variables & Special Variables
- [ ] Assigning variables (no spaces around `=`)
- [ ] Accessing: `$var` vs `${var}`
- [ ] Local variables (`local` inside functions)
- [ ] Environment variables (`export`)
- [ ] Read-only variables (`readonly`)
- [ ] Special variables: `$0 $1 $# $@ $* $? $$ $! $_`

#### 1.2 Quoting Rules
- [ ] Double quotes `" "` — expands variables and `$()`
- [ ] Single quotes `' '` — no expansion, fully literal
- [ ] Command substitution `$()` vs backticks
- [ ] The golden rule: always double-quote `"$var"` and `"$@"`
- [ ] Word splitting bugs and how to avoid them

#### 1.3 I/O & Redirection
- [ ] stdin (0), stdout (1), stderr (2)
- [ ] Redirect stdout: `>` (overwrite), `>>` (append)
- [ ] Redirect stderr: `2>`
- [ ] Redirect both: `&>` and `2>&1`
- [ ] Discard output: `/dev/null`
- [ ] Pipes: `|`
- [ ] `tee` — write to file and terminal simultaneously
- [ ] Here-doc `<<EOF`
- [ ] Here-string `<<<`

#### 1.4 Exit Codes & set -e
- [ ] Exit code 0 = success, 1–255 = failure
- [ ] `$?` to check the last exit code
- [ ] `&&` (run if success) and `||` (run if failure)
- [ ] `set -e` — exit on error
- [ ] `set -u` — error on unset variables
- [ ] `set -o pipefail` — catch errors in pipes
- [ ] `set -x` — debug mode
- [ ] `set -euo pipefail` as the standard script header

#### 1.5 Arrays
- [ ] Indexed arrays: declare, access, iterate
- [ ] `${arr[@]}` vs `${arr[*]}`
- [ ] Array length: `${#arr[@]}`
- [ ] Add elements: `arr+=("item")`
- [ ] Slice: `${arr[@]:start:length}`
- [ ] Delete element: `unset arr[i]`
- [ ] Associative arrays: `declare -A`
- [ ] Iterate keys: `${!map[@]}`

#### 1.6 String Manipulation (Parameter Expansion)
- [ ] Length: `${#str}`
- [ ] Substring: `${str:start:length}`
- [ ] Replace first: `${str/old/new}`
- [ ] Replace all: `${str//old/new}`
- [ ] Strip prefix (short): `${str#pattern}`
- [ ] Strip prefix (greedy): `${str##pattern}`
- [ ] Strip suffix (short): `${str%pattern}`
- [ ] Strip suffix (greedy): `${str%%pattern}`
- [ ] Uppercase: `${str^^}`, lowercase: `${str,,}`
- [ ] Default value: `${var:-default}`
- [ ] Assign if unset: `${var:=default}`

### Exercises

| # | Exercise | Status | Notes |
|---|----------|--------|-------|
| 1 | `info.sh` — takes 2 args, prints deploy message, exits 1 if args missing | ⬜ | |
| 2 | Quoting prediction — what does each echo print? | ⬜ | |
| 3 | One-liner — redirect stdout + stderr to separate files, also print to terminal | ⬜ | |
| 4 | `check_service()` — checks if a systemd service is active | ⬜ | |
| 5 | Array loop — extract version number from filenames using parameter expansion only | ⬜ | |

### My Solutions

<details>
<summary>Exercise 1 — info.sh</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 2 — Quoting predictions</summary>

```
# paste your predictions and results here
```

</details>

<details>
<summary>Exercise 3 — Redirection one-liner</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 4 — check_service()</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 5 — Array version extraction</summary>

```bash
# paste your solution here
```

</details>

### Key Takeaways
<!-- Fill in after completing the phase — what clicked, what was tricky -->
-
-
-

---

## 📗 Phase 2 — Control Flow & Functions

> **Timeline:** Week 2 &nbsp;|&nbsp; **Status:** ⬜ Not Started

### What you'll learn
Write scripts that make decisions — conditionals, loops, functions, and the error handling patterns used in real DevOps scripts.

### Topics & Checklist

#### 2.1 Conditionals & Tests
- [ ] `if / elif / else / fi` syntax
- [ ] Single bracket `[ ]` (POSIX) vs double bracket `[[ ]]` (bash)
- [ ] File tests: `-f`, `-d`, `-e`, `-r`, `-w`, `-x`, `-s`
- [ ] String tests: `=`, `!=`, `-z` (empty), `-n` (non-empty)
- [ ] Arithmetic tests: `-eq`, `-ne`, `-lt`, `-gt`, `-le`, `-ge`
- [ ] Pattern matching with `[[ $str == glob* ]]`
- [ ] Regex matching with `[[ $str =~ regex ]]`

#### 2.2 Loops
- [ ] `for item in list; do ... done`
- [ ] `for ((i=0; i<n; i++))` C-style loop
- [ ] `while condition; do ... done`
- [ ] `until condition; do ... done`
- [ ] `break` and `continue`
- [ ] Looping over files: `for f in *.log`
- [ ] Looping over array: `for item in "${arr[@]}"`
- [ ] Looping over lines: `while IFS= read -r line`

#### 2.3 Functions
- [ ] Function definition: `func_name() { ... }`
- [ ] Passing arguments: `$1`, `$2`, `$@`
- [ ] Return values: `return` (exit code) vs `echo` (capture with `$()`)
- [ ] `local` variables inside functions
- [ ] Recursive functions
- [ ] Calling functions with arguments

#### 2.4 Case Statements
- [ ] `case $var in pattern) ... ;; esac`
- [ ] Glob patterns in case: `*.sh`, `[0-9]`, `start|stop`
- [ ] Fall-through with `;&`
- [ ] Default case: `*)`

#### 2.5 Error Handling & trap
- [ ] `trap 'cmd' ERR` — run on any error
- [ ] `trap 'cleanup' EXIT` — always run on exit
- [ ] `trap 'handler' INT TERM` — catch signals
- [ ] Writing a cleanup function
- [ ] Combining `set -euo pipefail` with `trap`
- [ ] `|| { echo "failed"; exit 1; }` pattern

#### 2.6 Argument Parsing
- [ ] Positional arguments: `$1`, `$2`, shift
- [ ] `getopts` for short flags: `-v`, `-f filename`
- [ ] Manual parsing with `while/case` for long flags: `--verbose`
- [ ] Validating required arguments
- [ ] Printing help/usage messages

### Exercises

| # | Exercise | Status | Notes |
|---|----------|--------|-------|
| 1 | `validate_env.sh` — checks required env vars are set, exits with list of missing ones | ⬜ | |
| 2 | `retry.sh` — retries a command N times with a sleep interval | ⬜ | |
| 3 | `deploy.sh` — function-based deploy script with trap cleanup | ⬜ | |
| 4 | `parse_args.sh` — parses `--env`, `--version`, `--dry-run` flags | ⬜ | |
| 5 | `batch_rename.sh` — loops files, renames with case/conditional logic | ⬜ | |

### My Solutions

<details>
<summary>Exercise 1 — validate_env.sh</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 2 — retry.sh</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 3 — deploy.sh</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 4 — parse_args.sh</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 5 — batch_rename.sh</summary>

```bash
# paste your solution here
```

</details>

### Key Takeaways
<!-- Fill in after completing the phase -->
-
-
-

---

## 📙 Phase 3 — Power Tools & Text Processing

> **Timeline:** Weeks 3–4 &nbsp;|&nbsp; **Status:** ⬜ Not Started

### What you'll learn
Master the unix power tools every DevOps engineer uses daily — grep, awk, sed, find, xargs, and JSON processing with jq.

### Topics & Checklist

#### 3.1 grep & Regex
- [ ] Basic search: `grep "pattern" file`
- [ ] Extended regex: `grep -E`
- [ ] Recursive: `grep -r`
- [ ] Invert match: `grep -v`
- [ ] Count matches: `grep -c`
- [ ] Show line numbers: `grep -n`
- [ ] Context lines: `-A`, `-B`, `-C`
- [ ] Regex: anchors `^$`, character classes `[a-z]`, quantifiers `+?*`
- [ ] Common log parsing patterns

#### 3.2 sed
- [ ] Substitute: `sed 's/old/new/'`
- [ ] Substitute all: `sed 's/old/new/g'`
- [ ] In-place edit: `sed -i`
- [ ] Delete lines: `sed '/pattern/d'`
- [ ] Print lines: `sed -n '/pattern/p'`
- [ ] Address ranges: `sed '5,10s/old/new/'`
- [ ] Append/insert lines: `sed '/pattern/a\new line'`
- [ ] Multi-expression: `sed -e 's/a/b/' -e 's/c/d/'`

#### 3.3 awk
- [ ] Basic structure: `awk 'pattern { action }' file`
- [ ] Field variables: `$1`, `$2`, `$NF`, `NR`, `NF`
- [ ] Field separator: `awk -F:`
- [ ] Built-in variables: `FS`, `OFS`, `RS`, `ORS`
- [ ] `BEGIN` and `END` blocks
- [ ] Arithmetic and string operations
- [ ] Conditionals inside awk
- [ ] Summing columns, counting occurrences
- [ ] Real log analysis examples

#### 3.4 find & xargs
- [ ] Find by name: `find . -name "*.log"`
- [ ] Find by type: `-type f`, `-type d`
- [ ] Find by size: `-size +100M`
- [ ] Find by time: `-mtime -7`, `-newer file`
- [ ] Find by permissions: `-perm`
- [ ] Execute on results: `-exec cmd {} \;`
- [ ] Combine with xargs: `find . -name "*.log" | xargs grep "ERROR"`
- [ ] `xargs -I {}` for argument placement
- [ ] `xargs -P 4` for parallel execution

#### 3.5 sort, cut, uniq, tee, wc
- [ ] `sort` — alphabetical, numerical (`-n`), reverse (`-r`), by field (`-k`)
- [ ] `cut` — extract columns: `-d: -f1`, `-c1-10`
- [ ] `uniq` — deduplicate (needs sorted input), count (`-c`)
- [ ] `wc` — count lines (`-l`), words (`-w`), bytes (`-c`)
- [ ] `tee` — split output to file and stdout
- [ ] `head` / `tail` — first/last N lines, `tail -f` for live logs
- [ ] `tr` — translate or delete characters

#### 3.6 jq (JSON Processing)
- [ ] Pretty-print: `jq '.'`
- [ ] Extract field: `jq '.key'`
- [ ] Array index: `jq '.[0]'`
- [ ] Iterate array: `jq '.[]'`
- [ ] Filter: `jq '.[] | select(.status == "active")'`
- [ ] Transform: `jq '{name: .name, id: .id}'`
- [ ] Raw output: `jq -r`
- [ ] Compact output: `jq -c`
- [ ] Parsing API responses in scripts

### Exercises

| # | Exercise | Status | Notes |
|---|----------|--------|-------|
| 1 | Parse an nginx access log — count requests per status code | ⬜ | |
| 2 | `sed` script to replace all env-specific values in a config template | ⬜ | |
| 3 | `awk` — compute average response time from a log file | ⬜ | |
| 4 | Find all files older than 30 days in `/var/log`, compress them | ⬜ | |
| 5 | Parse a JSON API response with jq, extract specific fields to a CSV | ⬜ | |

### My Solutions

<details>
<summary>Exercise 1 — nginx log parser</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 2 — sed config replacer</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 3 — awk response time calculator</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 4 — find & compress old logs</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 5 — jq API response parser</summary>

```bash
# paste your solution here
```

</details>

### Key Takeaways
<!-- Fill in after completing the phase -->
-
-
-

---

## 📕 Phase 4 — DevOps & Automation Patterns

> **Timeline:** Weeks 5–6 &nbsp;|&nbsp; **Status:** ⬜ Not Started

### What you'll learn
Real-world patterns: deployment scripts, CI/CD integration, process management, networking, secrets handling, and cloud CLI automation.

### Topics & Checklist

#### 4.1 Deployment Scripts
- [ ] Pre-deploy validation checks
- [ ] Health check loops with timeout
- [ ] Zero-downtime deploy patterns (blue/green, rolling)
- [ ] Rollback logic on failure
- [ ] Environment promotion (dev → staging → prod)
- [ ] Deployment locking (prevent concurrent deploys)

#### 4.2 CI/CD Integration
- [ ] Shell steps in GitHub Actions / GitLab CI
- [ ] Environment variable handling in pipelines
- [ ] Build artifact creation and versioning
- [ ] Conditional steps based on branch or tag
- [ ] Caching strategies in CI scripts
- [ ] Failing fast vs continuing on error

#### 4.3 Process Management
- [ ] Background jobs: `cmd &`
- [ ] Wait for jobs: `wait`, `wait $PID`
- [ ] Kill processes: `kill`, `kill -9`, `pkill`, `killall`
- [ ] PID files for daemon-style scripts
- [ ] Signal handling: `SIGINT`, `SIGTERM`, `SIGHUP`
- [ ] `nohup` and `disown`
- [ ] Checking if a process is running

#### 4.4 File Operations
- [ ] Atomic writes with temp files and `mv`
- [ ] Safe temp files with `mktemp`
- [ ] File locking with `flock`
- [ ] Recursive copy, move, delete safely
- [ ] `rsync` for efficient file sync
- [ ] Checking disk space before operations

#### 4.5 Networking & curl
- [ ] `curl` — GET, POST, headers, auth, timeouts
- [ ] Parse HTTP response codes from curl
- [ ] `wget` for file downloads
- [ ] `nc` (netcat) for port checking
- [ ] SSH automation and key-based auth
- [ ] `scp` and `rsync` over SSH
- [ ] Service health check scripts

#### 4.6 Secrets & Environment Variables
- [ ] Never hardcode secrets in scripts
- [ ] Load from `.env` files safely
- [ ] Mask secrets in logs
- [ ] Use environment variables in CI/CD
- [ ] Integrate with secret managers (Vault, AWS SSM)
- [ ] Validate secrets are set before using

#### 4.7 Cloud CLI Automation
- [ ] AWS CLI scripting patterns
- [ ] Wait for resources: `aws ec2 wait`
- [ ] Parse CLI output with jq
- [ ] GCP / Azure CLI patterns
- [ ] Handle rate limits and retries
- [ ] Tag-based resource management

### Exercises

| # | Exercise | Status | Notes |
|---|----------|--------|-------|
| 1 | Full deploy script — with health checks, rollback, and lock file | ⬜ | |
| 2 | GitHub Actions shell step — build, test, push Docker image | ⬜ | |
| 3 | Process monitor — restart a service if it dies, log each restart | ⬜ | |
| 4 | `curl` script — poll an API until a job completes or times out | ⬜ | |
| 5 | Secret loader — reads `.env`, validates required keys, masks in output | ⬜ | |
| 6 | AWS script — list EC2 instances by tag, stop ones older than N hours | ⬜ | |

### My Solutions

<details>
<summary>Exercise 1 — deploy.sh (full)</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 2 — CI/CD shell step</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 3 — process monitor</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 4 — curl job poller</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 5 — secret loader</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 6 — AWS EC2 manager</summary>

```bash
# paste your solution here
```

</details>

### Key Takeaways
<!-- Fill in after completing the phase -->
-
-
-

---

## 📓 Phase 5 — Advanced & Production-Grade

> **Timeline:** Weeks 7–8 &nbsp;|&nbsp; **Status:** ⬜ Not Started

### What you'll learn
Write scripts that are secure, testable, performant, and maintainable — the standard for scripts running in production.

### Topics & Checklist

#### 5.1 Best Practices & shellcheck
- [ ] Always use `#!/usr/bin/env bash`
- [ ] `set -euo pipefail` in every script
- [ ] Install and run `shellcheck` on all scripts
- [ ] Naming conventions: variables, functions, files
- [ ] Script header: usage, description, author, version
- [ ] Keep functions small and single-purpose
- [ ] Use `printf` over `echo` for portability

#### 5.2 Performance & Parallelism
- [ ] Avoid unnecessary subshells `$()`
- [ ] Use builtins instead of external commands where possible
- [ ] Parallel execution with `xargs -P`
- [ ] GNU `parallel` for complex parallel jobs
- [ ] Measure script performance with `time`
- [ ] Avoid reading files line-by-line when not needed

#### 5.3 Testing with bats
- [ ] Install bats-core
- [ ] Write a basic test file: `@test "name" { ... }`
- [ ] Assertions: `[ "$output" = "expected" ]`
- [ ] Test exit codes: `run my_command; [ "$status" -eq 0 ]`
- [ ] Mocking commands in tests
- [ ] Run tests in CI pipeline

#### 5.4 Advanced Bash Features
- [ ] Process substitution: `<(cmd)` and `>(cmd)`
- [ ] Here-docs with indentation: `<<-EOF`
- [ ] Nameref variables: `declare -n`
- [ ] Advanced parameter expansion: `${var@Q}`, `${var@U}`
- [ ] Coprocess: `coproc`
- [ ] Extended globbing: `extglob`, `globstar`
- [ ] `mapfile` / `readarray` for reading into arrays

#### 5.5 Security Hardening
- [ ] Validate and sanitize all input
- [ ] Avoid `eval` — understand injection risks
- [ ] Quote everything to prevent word splitting injection
- [ ] Secure temp file creation: `mktemp`
- [ ] Set `umask` for sensitive files
- [ ] Avoid putting secrets in command arguments (visible in `ps`)
- [ ] Use `--` to end option parsing

#### 5.6 Libraries & Project Structure
- [ ] Sourcing: `source ./lib/common.sh`
- [ ] Namespace functions: `utils::log()`, `deploy::run()`
- [ ] Shared logging library (log levels, timestamps, colors)
- [ ] Shared error handling library
- [ ] `lib/` + `bin/` + `tests/` project layout
- [ ] `Makefile` to run scripts and tests

### Exercises (Capstone Challenges)

| # | Exercise | Status | Notes |
|---|----------|--------|-------|
| 1 | Refactor a messy script to pass shellcheck with zero warnings | ⬜ | |
| 2 | Add bats tests to your Phase 4 deploy script | ⬜ | |
| 3 | Parallel log processor — scan 50 log files concurrently for patterns | ⬜ | |
| 4 | Secure secret injector — pulls from Vault/SSM, injects into environment | ⬜ | |
| 5 | Build a reusable bash library: logging + retry + health check | ⬜ | |
| 6 | End-to-end: full CI/CD pipeline script with tests, deploy, rollback, notify | ⬜ | |

### My Solutions

<details>
<summary>Exercise 1 — shellcheck refactor</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 2 — bats test suite</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 3 — parallel log processor</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 4 — secure secret injector</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 5 — bash library</summary>

```bash
# paste your solution here
```

</details>

<details>
<summary>Exercise 6 — full CI/CD pipeline script</summary>

```bash
# paste your solution here
```

</details>

### Key Takeaways
<!-- Fill in after completing the phase -->
-
-
-

---

## 📅 Daily Log

> Update this every day you study. Even 20 minutes counts.

| Date | Phase | What I studied | Exercise done | Notes / Blockers |
|------|-------|----------------|---------------|------------------|
| <!-- date --> | 1 | Phase 1 overview — variables, quoting, I/O, exit codes, arrays, strings | Reading | Starting out |

---

## 💡 Things I Always Forget

> Your personal cheat sheet — add to this as you go.

```bash
# Always start scripts with:
#!/usr/bin/env bash
set -euo pipefail

# Quote all variables
echo "${var}"         # not $var

# Check exit code
if ! some_command; then
  echo "failed"
fi

# Array iteration (always use quotes)
for item in "${arr[@]}"; do
  echo "$item"
done
```

---

## 🔗 Resources

- [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html) — official docs
- [shellcheck.net](https://www.shellcheck.net) — online linter
- [explainshell.com](https://explainshell.com) — breaks down any command
- [bats-core](https://github.com/bats-core/bats-core) — bash testing framework
- [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html) — style reference

---

## 🏁 Completion Checklist

- [ ] Phase 1 — all topics studied, all 5 exercises completed
- [ ] Phase 2 — all topics studied, all 5 exercises completed
- [ ] Phase 3 — all topics studied, all 5 exercises completed
- [ ] Phase 4 — all topics studied, all 6 exercises completed
- [ ] Phase 5 — all topics studied, all 6 exercises completed
- [ ] 100+ lines of personal notes in "Things I Always Forget"
- [ ] At least one real script written and used at work/in a project
- [ ] shellcheck passing on all personal scripts

---

*Tracked with ❤️ and bash.*


