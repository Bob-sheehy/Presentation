class PurchasedDeal < ActionMailer::Base
  default from: "TennerDeals@gmail.com"
  
  def confirm(order)
    @order = order
    attachments.inline['qrcode.png'] = File.read("#{Rails.root}/app/assets/images/qrcode.png")
    mail to: order.email, subject: 'Deal Purchase from TennerDeals'
  end
  
  def welcome_email(newletter)
    @newsletter = Newsletter
    mail(to: newletter.email, subject: 'Thank you for signing up to Tennerdeals ')
  end
end

#
#Guides.rubyonrails.org. 2014. Action Mailer Basics — Ruby on Rails Guides. [online] 
#Available at: http://guides.rubyonrails.org/action_mailer_basics.html [Accessed: 7 Mar 2014].
#
#62 YouTube. 2014. Intro to Rails - ActionMailer. [online] 
#Available at: http://www.youtube.com/watch?v=NmVIkaRUb4s [Accessed: 14 Mar 2014].
#