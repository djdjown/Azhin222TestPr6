# **ПРАКТИЧЕСКАЯ РАБОТА №6<br> СОЗДАНИЕ АВТОМАТИЗИРОВАННОГО UNIT-ТЕСТА<br> Часть 2**

## Скриншот содержимого таблицы с пользователями из СУБД Microsoft SQL Server

![image](https://github.com/user-attachments/assets/b5b97110-846a-4877-b0fb-10098d67801c)


## Скриншот окна «Обозреватель тестов»
![image](https://github.com/user-attachments/assets/c0838208-4503-4ffa-9c58-a62b39a388dd)
## Вывод о проведенном тестировании


- **Тест 1**: *Пустые данные* - Пройден успешно.
- **Тест 2**: *Несуществующий пользователь* - Пройден успешно.
- **Тест 3**: *Существующий пользователь* - Пройден успешно.
- **Тест 4**: *Не верный логин* - Пройден успешно.
- **Тест 5**: *Регистрация пользователя* - Пройден успешно.

## Коды тестов

### UnitTest1.cs

```csharp
using Microsoft.VisualStudio.TestTools.UnitTesting;
using WpfApp9;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            MainWindow mainWindow = new MainWindow();
            Assert.IsFalse(mainWindow.Auth("", ""));  // Пустые поля
            Assert.IsFalse(mainWindow.Auth("wrongUser", "wrongPass")); // Несуществующий пользователь
            Assert.IsTrue(mainWindow.Auth("azhin", "123456")); // Должно пройти, если такой пользователь есть
        }
    }
}
```
### UnitTest2.cs

```csharp
using Microsoft.VisualStudio.TestTools.UnitTesting;
using WpfApp9;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void RegistrationTest()
        {
            MainWindow main = new MainWindow();
            Assert.IsFalse(main.Register("", ""));  // Пустые поля
            Assert.IsFalse(main.Register("newUser", "123")); // Слишком короткий пароль
            Assert.IsTrue(main.Register("uniqueUser", "securePassword123")); // Должно пройти
        }
    }
}

```
### UnitTest3.cs

```csharp
using Microsoft.VisualStudio.TestTools.UnitTesting;
using WpfApp9;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest3
    {
        [TestMethod]
        public void RegistrationTest()
        {
            MainWindow main = new MainWindow();
            string newUsername = "azhin9";
            string newPassword = "1234567";

            bool result = main.Register(newUsername, newPassword);
            Assert.IsTrue(result);
        }
    }
}
```

## SQL-скрипт базы данных скачать тут:


https://github.com/djdjown/Azhin222TestPr6

