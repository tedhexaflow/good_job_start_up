PurchaseOrderMailer.send_to_vendor(File.read(Rails.root.join('test.pdf'))).deliver_later
PurchaseOrderMailer.send_to_vendor(File.read(Rails.root.join('test.pdf')).force_encoding('ASCII-8BIT')).deliver_later
PurchaseOrderMailer.read_utf8_file_direct.deliver_later
PurchaseOrderMailer.read_ascii_file_direct.deliver_later
