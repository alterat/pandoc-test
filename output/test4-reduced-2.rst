    service **VerificaVoucher**

+-----------------------------------+-----------------------------------+
| diagram                           |     |image1|                      |
+===================================+===================================+
| ports                             |     **VerificaVoucherSOAP**       |
|                                   |                                   |
|                                   |     binding                       |
|                                   |     `**tns:VerificaVoucherSOAP**  |
|                                   | <#_bookmark2>`__                  |
|                                   |                                   |
|                                   |     extensibility <soap:address   |
|                                   |                                   |
|                                   |     location="https://bonus.mibac |
|                                   | t.it/VerificaVoucherWEB/VerificaV |
|                                   | oucher"/>                         |
+-----------------------------------+-----------------------------------+
| source                            |     <wsdl:service                 |
|                                   |     name="VerificaVoucher">       |
|                                   |                                   |
|                                   |     <wsdl:port                    |
|                                   |     name="VerificaVoucherSOAP"    |
|                                   |     binding="tns:VerificaVoucherS |
|                                   | OAP">                             |
+-----------------------------------+-----------------------------------+

.. |image0| image:: media/image1.png
   :width: 3.2375in
   :height: 0.49861in
.. |image1| image:: media/image1.png
   :width: 3.2375in
   :height: 0.49861in
