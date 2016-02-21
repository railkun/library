class BookMailer < ApplicationMailer

  def book_created(book)
    @book = book
    mail(to: 'admin@google.com', subject: "Book #{@book.title} was created!!!")
  end
end
