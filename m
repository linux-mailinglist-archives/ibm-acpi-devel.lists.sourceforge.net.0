Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDB035D8C3
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 13 Apr 2021 09:22:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lWDMb-0005M1-6C; Tue, 13 Apr 2021 07:21:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lWDMZ-0005Lm-Jb
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 13 Apr 2021 07:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xfhWD4LuEvr6SvSP1VhSazKaMKiGs/S9uH0lW7bV7MY=; b=EfXEMw9rM4rKOaqfJNe1cb8sgx
 3/3LOfh2c798ebsU4NZYzEf1VEpX3C5gwvDC4ZF5wmD5ZdJEk9CFNbRZOC9nXpspn/YH9gKw2Djsx
 HuA2vT98jRcaysbu64aJ9v55HT/k2OyBYXo7s408Wsj5vol/aZwxGLsQFS/Ikebc53pY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xfhWD4LuEvr6SvSP1VhSazKaMKiGs/S9uH0lW7bV7MY=; b=i
 1lhmrmSw0Ky/19pWBox7QqUMkhVm0R5umnzEXvOhoKfuZVwzy0XuFTJaLFj6AdjhKrT+jfEQeVNba
 xTh53k7IcOBMORpdB633OAXRb8YkCbXbqY17R1ZCbRZrK3UfuA0OC6HWO1r71Rf6vytx1xiI/DaKD
 krWxQZ28OneqfuKc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lWDMU-00ER5I-ED
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 13 Apr 2021 07:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618298479;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xfhWD4LuEvr6SvSP1VhSazKaMKiGs/S9uH0lW7bV7MY=;
 b=gCjsk96zAUEsRpZRe5L7s6uHyAStUELC37MnD5oVpgLKyDPafDAEqP5fKHMg2cGslRFUir
 4GlYLv4rFspD5Y1x2BYj7qaeuzNCC4a8OSVP/MbY9LygrD3B1TA64OJR57L44kikJHcdt+
 nQD44QZbC6n0uyxjCchm12HE6JqeiNs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-s6SGmjrjP_iSN4t8xIkbjQ-1; Tue, 13 Apr 2021 03:21:16 -0400
X-MC-Unique: s6SGmjrjP_iSN4t8xIkbjQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14CAC1006C87;
 Tue, 13 Apr 2021 07:21:15 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-114-109.ams2.redhat.com
 [10.36.114.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CBA731724D;
 Tue, 13 Apr 2021 07:21:13 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Mark Gross <mgross@linux.intel.com>, Andy Shevchenko <andy@infradead.org>
Date: Tue, 13 Apr 2021 09:21:12 +0200
Message-Id: <20210413072112.183550-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lWDMU-00ER5I-ED
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add labels to
 the first 2 temperature sensors
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: Hans de Goede <hdegoede@redhat.com>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Mark Pearson <markpearson@lenovo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gRUMgdmVyc2lvbiAzLCB0aGUgZmlyc3QgMiB0ZW1wZXJhdHVyZSBzZW5zb3JzIGFyZSBhbHdh
eXMgQ1BVIGFuZCBHUFUKYWRkIGxhYmVscyBmb3IgdGhlc2UuCgpUaGlzIGNoYW5nZXMgZS5nLiB0
aGUgInNlbnNvcnMiIGNvbW1hbmQgb3V0cHV0IG9uIGEgWDFDOCBmcm9tOgoKdGhpbmtwYWQtaXNh
LTAwMDAKQWRhcHRlcjogSVNBIGFkYXB0ZXIKZmFuMTogICAgICAgIDI2OTQgUlBNCnRlbXAxOiAg
ICAgICAgKzQyLjDCsEMKdGVtcDI6ICAgICAgICAgICAgTi9BCnRlbXAzOiAgICAgICAgKzMzLjDC
sEMKdGVtcDQ6ICAgICAgICAgKzAuMMKwQwp0ZW1wNTogICAgICAgICszNS4wwrBDCnRlbXA2OiAg
ICAgICAgKzQyLjDCsEMKdGVtcDc6ICAgICAgICArNDIuMMKwQwp0ZW1wODogICAgICAgICAgICBO
L0EKCmludG86Cgp0aGlua3BhZC1pc2EtMDAwMApBZGFwdGVyOiBJU0EgYWRhcHRlcgpmYW4xOiAg
ICAgICAgMjY5NCBSUE0KQ1BVOiAgICAgICAgICArNDIuMMKwQwpHUFU6ICAgICAgICAgICAgICBO
L0EKdGVtcDM6ICAgICAgICArMzMuMMKwQwp0ZW1wNDogICAgICAgICArMC4wwrBDCnRlbXA1OiAg
ICAgICAgKzM1LjDCsEMKdGVtcDY6ICAgICAgICArNDIuMMKwQwp0ZW1wNzogICAgICAgICs0Mi4w
wrBDCnRlbXA4OiAgICAgICAgICAgIE4vQQoKU2lnbmVkLW9mZi1ieTogSGFucyBkZSBHb2VkZSA8
aGRlZ29lZGVAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9h
Y3BpLmMgfCA3MiArKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NDcgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
bGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtw
YWRfYWNwaS5jCmluZGV4IGVjOTgwODlkOThjOS4uZGQ2MGM5Mzk3ZDM1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKKysrIGIvZHJpdmVycy9wbGF0Zm9y
bS94ODYvdGhpbmtwYWRfYWNwaS5jCkBAIC02Mjk2LDYgKzYyOTYsOCBAQCBzdHJ1Y3QgaWJtX3Ro
ZXJtYWxfc2Vuc29yc19zdHJ1Y3QgewogfTsKIAogc3RhdGljIGVudW0gdGhlcm1hbF9hY2Nlc3Nf
bW9kZSB0aGVybWFsX3JlYWRfbW9kZTsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dy
b3VwICp0aGVybWFsX2F0dHJfZ3JvdXA7CitzdGF0aWMgYm9vbCB0aGVybWFsX3VzZV9sYWJlbHM7
CiAKIC8qIGlkeCBpcyB6ZXJvLWJhc2VkICovCiBzdGF0aWMgaW50IHRoZXJtYWxfZ2V0X3NlbnNv
cihpbnQgaWR4LCBzMzIgKnZhbHVlKQpAQCAtNjQ3OCw2ICs2NDgwLDI4IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwIHRoZXJtYWxfdGVtcF9pbnB1dDhfZ3JvdXAgPSB7CiAj
dW5kZWYgVEhFUk1BTF9TRU5TT1JfQVRUUl9URU1QCiAjdW5kZWYgVEhFUk1BTF9BVFRSUwogCitz
dGF0aWMgc3NpemVfdCB0ZW1wMV9sYWJlbF9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0
IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKK3sKKwlyZXR1cm4gc3lzZnNfZW1p
dChidWYsICJDUFVcbiIpOworfQorc3RhdGljIERFVklDRV9BVFRSX1JPKHRlbXAxX2xhYmVsKTsK
Kworc3RhdGljIHNzaXplX3QgdGVtcDJfbGFiZWxfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCit7CisJcmV0dXJuIHN5c2Zz
X2VtaXQoYnVmLCAiR1BVXG4iKTsKK30KK3N0YXRpYyBERVZJQ0VfQVRUUl9STyh0ZW1wMl9sYWJl
bCk7CisKK3N0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICp0ZW1wX2xhYmVsX2F0dHJpYnV0ZXNbXSA9
IHsKKwkmZGV2X2F0dHJfdGVtcDFfbGFiZWwuYXR0ciwKKwkmZGV2X2F0dHJfdGVtcDJfbGFiZWwu
YXR0ciwKKwlOVUxMCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCB0
ZW1wX2xhYmVsX2F0dHJfZ3JvdXAgPSB7CisJLmF0dHJzID0gdGVtcF9sYWJlbF9hdHRyaWJ1dGVz
LAorfTsKKwogLyogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCiAKIHN0YXRpYyBpbnQgX19pbml0IHRoZXJtYWxf
aW5pdChzdHJ1Y3QgaWJtX2luaXRfc3RydWN0ICppaWJtKQpAQCAtNjUzMywxMiArNjU1NywxNCBA
QCBzdGF0aWMgaW50IF9faW5pdCB0aGVybWFsX2luaXQoc3RydWN0IGlibV9pbml0X3N0cnVjdCAq
aWlibSkKIAkJCQl0aGVybWFsX3JlYWRfbW9kZSA9IFRQQUNQSV9USEVSTUFMX05PTkU7CiAJCQl9
CiAJCX0gZWxzZSB7Ci0JCQlpZiAodmVyID49IDMpCisJCQlpZiAodmVyID49IDMpIHsKIAkJCQl0
aGVybWFsX3JlYWRfbW9kZSA9IFRQQUNQSV9USEVSTUFMX1RQRUNfODsKLQkJCWVsc2UKKwkJCQl0
aGVybWFsX3VzZV9sYWJlbHMgPSB0cnVlOworCQkJfSBlbHNlIHsKIAkJCQl0aGVybWFsX3JlYWRf
bW9kZSA9CiAJCQkJCSh0YTIgIT0gMCkgPwogCQkJCQlUUEFDUElfVEhFUk1BTF9UUEVDXzE2IDog
VFBBQ1BJX1RIRVJNQUxfVFBFQ184OworCQkJfQogCQl9CiAJfSBlbHNlIGlmIChhY3BpX3RtcDcp
IHsKIAkJaWYgKHRwYWNwaV9pc19pYm0oKSAmJgpAQCAtNjU2MCw0NCArNjU4Niw0MCBAQCBzdGF0
aWMgaW50IF9faW5pdCB0aGVybWFsX2luaXQoc3RydWN0IGlibV9pbml0X3N0cnVjdCAqaWlibSkK
IAogCXN3aXRjaCAodGhlcm1hbF9yZWFkX21vZGUpIHsKIAljYXNlIFRQQUNQSV9USEVSTUFMX1RQ
RUNfMTY6Ci0JCXJlcyA9IHN5c2ZzX2NyZWF0ZV9ncm91cCgmdHBhY3BpX2h3bW9uLT5rb2JqLAot
CQkJCSZ0aGVybWFsX3RlbXBfaW5wdXQxNl9ncm91cCk7Ci0JCWlmIChyZXMpCi0JCQlyZXR1cm4g
cmVzOworCQl0aGVybWFsX2F0dHJfZ3JvdXAgPSAmdGhlcm1hbF90ZW1wX2lucHV0MTZfZ3JvdXA7
CiAJCWJyZWFrOwogCWNhc2UgVFBBQ1BJX1RIRVJNQUxfVFBFQ184OgogCWNhc2UgVFBBQ1BJX1RI
RVJNQUxfQUNQSV9UTVAwNzoKIAljYXNlIFRQQUNQSV9USEVSTUFMX0FDUElfVVBEVDoKLQkJcmVz
ID0gc3lzZnNfY3JlYXRlX2dyb3VwKCZ0cGFjcGlfaHdtb24tPmtvYmosCi0JCQkJJnRoZXJtYWxf
dGVtcF9pbnB1dDhfZ3JvdXApOwotCQlpZiAocmVzKQotCQkJcmV0dXJuIHJlczsKKwkJdGhlcm1h
bF9hdHRyX2dyb3VwID0gJnRoZXJtYWxfdGVtcF9pbnB1dDhfZ3JvdXA7CiAJCWJyZWFrOwogCWNh
c2UgVFBBQ1BJX1RIRVJNQUxfTk9ORToKIAlkZWZhdWx0OgogCQlyZXR1cm4gMTsKIAl9CiAKKwly
ZXMgPSBzeXNmc19jcmVhdGVfZ3JvdXAoJnRwYWNwaV9od21vbi0+a29iaiwgdGhlcm1hbF9hdHRy
X2dyb3VwKTsKKwlpZiAocmVzKQorCQlyZXR1cm4gcmVzOworCisJaWYgKHRoZXJtYWxfdXNlX2xh
YmVscykgeworCQlyZXMgPSBzeXNmc19jcmVhdGVfZ3JvdXAoJnRwYWNwaV9od21vbi0+a29iaiwg
JnRlbXBfbGFiZWxfYXR0cl9ncm91cCk7CisJCWlmIChyZXMpIHsKKwkJCXN5c2ZzX3JlbW92ZV9n
cm91cCgmdHBhY3BpX2h3bW9uLT5rb2JqLCB0aGVybWFsX2F0dHJfZ3JvdXApOworCQkJcmV0dXJu
IHJlczsKKwkJfQorCX0KKwogCXJldHVybiAwOwogfQogCiBzdGF0aWMgdm9pZCB0aGVybWFsX2V4
aXQodm9pZCkKIHsKLQlzd2l0Y2ggKHRoZXJtYWxfcmVhZF9tb2RlKSB7Ci0JY2FzZSBUUEFDUElf
VEhFUk1BTF9UUEVDXzE2OgotCQlzeXNmc19yZW1vdmVfZ3JvdXAoJnRwYWNwaV9od21vbi0+a29i
aiwKLQkJCQkgICAmdGhlcm1hbF90ZW1wX2lucHV0MTZfZ3JvdXApOwotCQlicmVhazsKLQljYXNl
IFRQQUNQSV9USEVSTUFMX1RQRUNfODoKLQljYXNlIFRQQUNQSV9USEVSTUFMX0FDUElfVE1QMDc6
Ci0JY2FzZSBUUEFDUElfVEhFUk1BTF9BQ1BJX1VQRFQ6Ci0JCXN5c2ZzX3JlbW92ZV9ncm91cCgm
dHBhY3BpX2h3bW9uLT5rb2JqLAotCQkJCSAgICZ0aGVybWFsX3RlbXBfaW5wdXQ4X2dyb3VwKTsK
LQkJYnJlYWs7Ci0JY2FzZSBUUEFDUElfVEhFUk1BTF9OT05FOgotCWRlZmF1bHQ6Ci0JCWJyZWFr
OwotCX0KKwlpZiAodGhlcm1hbF9hdHRyX2dyb3VwKQorCQlzeXNmc19yZW1vdmVfZ3JvdXAoJnRw
YWNwaV9od21vbi0+a29iaiwgdGhlcm1hbF9hdHRyX2dyb3VwKTsKKworCWlmICh0aGVybWFsX3Vz
ZV9sYWJlbHMpCisJCXN5c2ZzX3JlbW92ZV9ncm91cCgmdHBhY3BpX2h3bW9uLT5rb2JqLCAmdGVt
cF9sYWJlbF9hdHRyX2dyb3VwKTsKIH0KIAogc3RhdGljIGludCB0aGVybWFsX3JlYWQoc3RydWN0
IHNlcV9maWxlICptKQotLSAKMi4zMS4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1k
ZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
