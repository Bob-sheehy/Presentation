class QrcodeController < ApplicationController
## Rubydoc.info. 2014. Documentation for rqrcode (0.4.2). [online] 
## Available at: http://rubydoc.info/gems/rqrcode/0.4.2/frames [Accessed: 18 Jan 2014]. 
 
   require 'rubygems'
  require 'rqrcode'

  def index
   @qr = RQRCode::QRCode.new( 'TestingQRCode122223', :size => 4, :level => :h )
    @qr1 = RQRCode::QRCode.new( 'TestingQRCode122289676', :size => 4, :level => :h )
  @qr2 = RQRCode::QRCode.new( 'TestingQRCode1224665', :size => 4, :level => :h )

  p @qr.to_s
  
  end
end
