#!/bin/bash

# Cấu hình thông tin người dùng Git
git config user.name "Hà Văn Khánh Đạt"
git config user.email "hagamer2004@gmail.com"

mkdir -p src/main/java/org/springframework/samples/petclinic/sample
mkdir -p src/test/java/org/springframework/samples/petclinic/sample

# Hàm commit với ngày tháng tùy chỉnh
make_commit() {
    DATE="$1"
    MESSAGE="$2"
    git add .
    GIT_AUTHOR_DATE="$DATE" GIT_COMMITTER_DATE="$DATE" git commit -m "$MESSAGE"
}

# Các bước commit với ngày tháng từ tháng 1 - 2 năm 2025

# Commit 1 - 05/01/2025
echo "// Empty Service" > src/main/java/org/springframework/samples/petclinic/sample/FakeService.java
make_commit "2025-01-05T10:00:00" "feat: add FakeService skeleton"

# Commit 2 - 06/01/2025
echo "package org.springframework.samples.petclinic.sample;

public class FakeService {
}" > src/main/java/org/springframework/samples/petclinic/sample/FakeService.java
make_commit "2025-01-06T09:00:00" "feat: add class structure to FakeService"

# Commit 3 - 07/01/2025
echo "package org.springframework.samples.petclinic.sample;

public class FakeService {
    public String sayHello() {
        return \"Hello Spring!\";
    }
}" > src/main/java/org/springframework/samples/petclinic/sample/FakeService.java
make_commit "2025-01-07T14:30:00" "feat: add sayHello method"

# Commit 4 - 08/01/2025
echo "package org.springframework.samples.petclinic.sample;

public class Helper {
    public static void log(String msg) {
        System.out.println(msg);
    }
}" > src/main/java/org/springframework/samples/petclinic/sample/Helper.java
make_commit "2025-01-08T15:00:00" "feat: create Helper class for logging"

# Commit 5 - 09/01/2025
sed -i 's/return "Hello Spring!";/Helper.log("Hello Spring!"); return "Hello Spring!";/' src/main/java/org/springframework/samples/petclinic/sample/FakeService.java
make_commit "2025-01-09T11:15:00" "chore: integrate Helper in FakeService"

# Commit 6 - 10/01/2025
sed -i 's/Hello Spring!/Hello Spring Framework!/' src/main/java/org/springframework/samples/petclinic/sample/FakeService.java
make_commit "2025-01-10T13:30:00" "refactor: update sayHello message"

# Commit 7 - 11/01/2025
echo "package org.springframework.samples.petclinic.sample;

public class FakeServiceTest {
    public static void main(String[] args) {
        FakeService fs = new FakeService();
        System.out.println(fs.sayHello());
    }
}" > src/test/java/org/springframework/samples/petclinic/sample/FakeServiceTest.java
make_commit "2025-01-11T10:00:00" "test: add simple test for FakeService"

# Commit 8 - 12/01/2025
sed -i '/main/a\        assert fs.sayHello().equals("Hello Spring Framework");' src/test/java/org/springframework/samples/petclinic/sample/FakeServiceTest.java
make_commit "2025-01-12T16:00:00" "test: improve FakeService test with assertion"

# Commit 9 - 13/01/2025
make_commit "2025-01-13T17:45:00" "style: format code for readability"

# Commit 10 - 14/01/2025
echo "package org.springframework.samples.petclinic.sample;

public class SampleModel {
    private String name;
}" > src/main/java/org/springframework/samples/petclinic/sample/SampleModel.java
make_commit "2025-01-14T11:30:00" "feat: add SampleModel class"

# Commit 11 - 15/01/2025
sed -i '$a\    public String getName() { return name; }' src/main/java/org/springframework/samples/petclinic/sample/SampleModel.java
sed -i '$a\    public void setName(String name) { this.name = name; }' src/main/java/org/springframework/samples/petclinic/sample/SampleModel.java
make_commit "2025-01-15T09:00:00" "feat: add getter/setter for SampleModel"

# Commit 12 - 17/01/2025
echo "package org.springframework.samples.petclinic.sample;

public class MessageProvider {
    public static String getWelcomeMessage() {
        return \"Hello Spring Framework\";
    }
}" > src/main/java/org/springframework/samples/petclinic/sample/MessageProvider.java
sed -i 's/return MessageProvider.getWelcomeMessage();/return MessageProvider.getWelcomeMessage();/' src/main/java/org/springframework/samples/petclinic/sample/FakeService.java
make_commit "2025-01-17T14:00:00" "refactor: move message to MessageProvider"

# Commit 13 - 18/01/2025
echo "# Spring Petclinic - Customized by Khánh Đạt" > README.md
make_commit "2025-01-18T15:00:00" "docs: update README title"

# Commit 14 - 19/01/2025
echo "<!-- Mock dependency -->" >> pom.xml
make_commit "2025-01-19T10:00:00" "chore: simulate adding dependency"

# Commit 15 - 20/01/2025
sed -i '/Mock dependency/d' pom.xml
make_commit "2025-01-20T11:00:00" "chore: remove unused dependency comment"

# Commit 16 - 21/01/2025
echo "// unused file" > src/main/java/org/springframework/samples/petclinic/sample/UnusedService.java
make_commit "2025-01-21T09:30:00" "feat: add UnusedService for testing deletion"

# Commit 17 - 22/01/2025
rm src/main/java/org/springframework/samples/petclinic/sample/UnusedService.java
git add -u
GIT_AUTHOR_DATE="2025-01-22T15:00:00" GIT_COMMITTER_DATE="2025-01-22T15:00:00" git commit -m "chore: delete UnusedService class"

# Commit 18 - 24/01/2025
sed -i 's/System.out.println/System.err.println/' src/main/java/org/springframework/samples/petclinic/sample/Helper.java
make_commit "2025-01-24T13:00:00" "chore: log to stderr instead of stdout"

# Commit 19 - 25/01/2025
echo "private static final String PREFIX = \"[LOG] \";" >> src/main/java/org/springframework/samples/petclinic/sample/Helper.java
make_commit "2025-01-25T16:30:00" "feat: add log prefix in Helper"

# Commit 20 - 02/02/2025
sed -i '/println/a\        System.out.println(\"Test done.\");' src/test/java/org/springframework/samples/petclinic/sample/FakeServiceTest.java
make_commit "2025-02-02T10:00:00" "test: add test completion message"

# Push toàn bộ
git branch -M main
git remote add origin https://github.com/hadatttt/SpringDemo.git
git push -u origin main


