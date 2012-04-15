class NoticeMailer < ActionMailer::Base

  def notice_to_doc(study)
    @study = study
    mail(:to => 'kyungbae@gmail.com', :subject => "You got a new DICOM file", :from => 'kyungbae@seededu.com')
  end
  
  def confirmation_to_sender(study)
    @study = study
    mail(:to => @study.email, :subject => "Confirmation of Your Upload", :from => 'info@nohope.com')
  end
end
