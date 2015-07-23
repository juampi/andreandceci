class RSVPForm < MailForm::Base
  attribute :name, validate: true
  attribute :guest_count, validate: true
  attribute :song_request, validate: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "RSVP Form",
      to: "Cecilia Rinaldi <cecirinaldi@gmail.com>, André Thiollier <andrethiollier@hotmail.com>, Belén Cesa Martínez <belen@barbaradiez.com>, Laura Castro <laura@barbaradiez.com>",
      bcc: "Juan Pablo Rinaldi <juampi@juampi.com>",
      from: "André and Ceci <info@andreandceci.com>"
    }
  end
end