class NoticeMailer < ActionMailer::Base
  default from: "pacs@nohope.com"
  
  def notice_to_doc(notice)
    @noice = notice
    mail(:to => 'kyungbae@gmail', :subject => "You got a new DICOM file")
  end
end
