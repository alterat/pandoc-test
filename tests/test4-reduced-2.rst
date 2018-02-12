    service **VerificaVoucher**

+---------+------------------------------------------------------------------------------+
| diagram |     |image0|                                                                 |
+=========+==============================================================================+
| ports   |     **VerificaVoucherSOAP**                                                  |
|         |                                                                              |
|         |     binding `**tns:VerificaVoucherSOAP** <#_bookmark2>`__                    |
|         |                                                                              |
|         |     extensibility <soap:address                                              |
|         |                                                                              |
|         |     location="https://bonus.mibact.it/VerificaVoucherWEB/VerificaVoucher"/>  |
+---------+------------------------------------------------------------------------------+
| source  |     <wsdl:service name="VerificaVoucher">                                    |
|         |                                                                              |
|         |     <wsdl:port name="VerificaVoucherSOAP" binding="tns:VerificaVoucherSOAP"> |
+---------+------------------------------------------------------------------------------+

.. |image0| image:: media/image1.png
   :width: 3.2375in
   :height: 0.49861in
