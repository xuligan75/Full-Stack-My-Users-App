# My Sinatra User Management App

Bu proyekt, Sinatra frameworki yordamida yaratilgan, o'z ichiga olgan foydalanuvchilarni boshqarishga mo'ljallangan ilovadur.

## Qo'llanish

Proyektni o'zi yuklab olish uchun quyidagi qadamlarni bajarishingiz mumkin:

1. Repositoriyani yuklab olish:

    ```bash
    git clone https://github.com/sizning-username/my-sinatra-user-app.git
    cd my-sinatra-user-app
    ```

2. Loyiha uchun kerakli g'machilarni o'rnatish:

    ```bash
    bundle install
    ```

3. Ilovani ishga tushirish:

  ruby app.rb

4. Brauzerda [http://localhost:8080](http://localhost:8080) manziliga kirib, ilovadan foydalanish.

## Ilova Yo'l-Haritası

- `/users` - Barcha foydalanuvchilarni ko'rish uchun GET so'rovi.
- `/users` - Foydalanuvchi yaratish uchun POST so'rovi.
- `/sign_in` - Foydalanuvchi kirish uchun POST so'rovi.
- `/users` - Foydalanuvchi parolini yangilash uchun PUT so'rovi.
- `/sign_out` - Foydalanuvchi chiqish uchun DELETE so'rovi.
- `/users` - Foydalanuvchini o'chirish uchun DELETE so'rovi.

## Ma'lumotlar Bazasi

Ma'lumotlar bazasi uchun SQL so'rovlari [db.sql](db.sql) faylida joylangan. Ushbu faylni ishlatib, ilova yaratilgan foydalanuvchilarni saqlaydi.

## Avtor

Misol Sharipov - [@sizning-username](https://github.com/sizning-username)

## Kabi

Ushbu proyekt [MIT](LICENSE) litsenziyasi bilan chegaralanadi - qo'llanish uchun batafsil ma'lumot uchun [LICENSE](LICENSE) faylini ko'ring.
