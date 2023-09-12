Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F8679D308
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 12 Sep 2023 15:58:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qg3uM-00062t-Fz;
	Tue, 12 Sep 2023 13:58:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tom.troughton@protonmail.ch>) id 1qg3uK-00062n-5N
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 12 Sep 2023 13:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:From:
 To:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CN9qU18MyY2oyv5GaCqpcXrjG59LZ0ydbz9YoTVvlRQ=; b=M8DInqfYqlrUmx59GyaFSlzdtt
 EH+4L2jWhsAJPWMih7wg5hD4hnq14Zf8hSlEjcIShEhEq8yVWKzeKy7GTe+AooOl+HI1Y6JMrp/Va
 4G2RIVPrSULr7ckiYAKjaoIdGLuMth/W/yUBlu9WNhM6I8Og1uc86EMY5ZQDwwEVQgZE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:From:To:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CN9qU18MyY2oyv5GaCqpcXrjG59LZ0ydbz9YoTVvlRQ=; b=R
 rHjkufbFX2oBniEKDkrb9aqYN/cQsjjJ34HYc6AEcUM1fp1Y6ppMkHGf1/bm+D1nFeoFM+zP9P4Cu
 JrKywsd/it6dqSX+0RzXtssJ5oGTzCUzUeyEPWDxcBSIo5PvUpFkq6uSMNt7YSM/Qa0ZMVYaMUnmu
 bAvs90kktiOoQazk=;
Received: from mail-4327.protonmail.ch ([185.70.43.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qg3uJ-00030J-RW for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 12 Sep 2023 13:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
 s=protonmail3; t=1694527074; x=1694786274;
 bh=CN9qU18MyY2oyv5GaCqpcXrjG59LZ0ydbz9YoTVvlRQ=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=btnivIBNvkcSWWCrraAi/QT5JP/0xlDH6IoC45M0+hTZvyY0wDezZsrfEFVKTPcnL
 Jtp69/buomLCFAb0r4VRzd6pVHCVXlkUSjMdcg/c657RivlXoJQHAOdUOpM0Oid8y0
 wPPTCakQE3nJE9o+evCjxFv1cq2t+n32AFOAt46VI5FtlQ+8RcU+rSz6qXJZVW7X7C
 XyykG4HUpsUqaWBH6PyJT54vrNfC6yUapVvkQpapk/IEyfD66+lwOo/ZQFXIvijtE+
 siCdYcO10yJSo6nsNpdvgw7D2JW9pb7fu/2aKDCBntGK/UhfL30omWlwPPwNcANE/p
 R5jCnAe+/F4rg==
Date: Tue, 12 Sep 2023 13:57:44 +0000
To: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>
Message-ID: <5ahTXXVCA2HRvBMLjyL-HGlXN_YWmJ3WmwSVkUaNHw6J3GVtUo2y9ugqiH3ITu_wDbmnvn1pz76PlyreYUk9Wjcd7mYf2KuHXe2Tn0oiwpI=@protonmail.ch>
Feedback-ID: 25687:user:proton
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Running Ubuntu 22.04. At every boot I get the message:
    ​***-ThinkPad-L13-Yoga-Gen-2a kernel: [ 2.195376] thinkpad_acpi: Unknown/reserved
    multi mode value 0x0000 for type 4, please report this to ibm-acpi-devel@lists.sourceforge.net
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tom.troughton[at]protonmail.ch]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1qg3uJ-00030J-RW
Subject: [ibm-acpi-devel] L13 Gen 2 AMD Yoga
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
From: "tom.troughton--- via ibm-acpi-devel"
 <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: tom.troughton@protonmail.ch
Content-Type: multipart/mixed; boundary="===============2916902862100643578=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============2916902862100643578==
Content-Type: multipart/alternative;
 boundary="b1_yay4iOJ7NKMCOh37Uddn9ImyTiDp41G40xRXKlbP3nk"

This is a multi-part message in MIME format.

--b1_yay4iOJ7NKMCOh37Uddn9ImyTiDp41G40xRXKlbP3nk
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGksCgpSdW5uaW5nIFVidW50dSAyMi4wNC4gQXQgZXZlcnkgYm9vdCBJIGdldCB0aGUgbWVzc2Fn
ZToKCuKAiyoqKi1UaGlua1BhZC1MMTMtWW9nYS1HZW4tMmEga2VybmVsOiBbIDIuMTk1Mzc2XSB0
aGlua3BhZF9hY3BpOiBVbmtub3duL3Jlc2VydmVkIG11bHRpIG1vZGUgdmFsdWUgMHgwMDAwIGZv
ciB0eXBlIDQsIHBsZWFzZSByZXBvcnQgdGhpcyB0byBpYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKCkkgc2VlIHRoZXJlIHdhcyBhIG1lc3NhZ2UgZWFybGllciB0aGlzIHllYXIg
KGh0dHBzOi8vc291cmNlZm9yZ2UubmV0L3AvaWJtLWFjcGkvbWFpbG1hbi9tZXNzYWdlLzM3NjQ0
MTQ4LykgdGhhdCBpcyBwZXJoYXBzIGFib3V0IHRoZSBzYW1lIHRoaW5nLiBBYm91dCB0YWJsZXQg
bW9kZTogV2hlbiBsb2FkaW5nIFVidW50dSwgdGhlIHNjcmVlbiBkb2VzIG5vdCBhZGp1c3Qgb3Jp
ZW50YXRpb24gd2hlbiB0aGUgc2NyZWVuIGlzIGZsaXBwZWQgdG8gdGFibGV0IG1vZGUsIGJ1dCB3
aGVuIGxvYWRpbmcgVWJ1bnR1IG9uIFggaXQgZG9lcyB3b3JrLgoKU2VudCBmcm9tIFtQcm90b25N
YWlsXShodHRwczovL3Byb3Rvbm1haWwuY2gpLCBlbmNyeXB0ZWQgZW1haWwgYmFzZWQgaW4gU3dp
dHplcmxhbmQu

--b1_yay4iOJ7NKMCOh37Uddn9ImyTiDp41G40xRXKlbP3nk
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0
cHg7Ij5IaSw8L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7
IGZvbnQtc2l6ZTogMTRweDsiPjxicj48L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJp
YWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsiPlJ1bm5pbmcgVWJ1bnR1IDIyLjA0LiBB
dCBldmVyeSBib290IEkgZ2V0IHRoZSBtZXNzYWdlOjwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFt
aWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+PGJyPjwvZGl2PjxkaXYg
c3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+
PHNwYW4+PGI+PC9iPuKAiyoqKi1UaGlua1BhZC1MMTMtWW9nYS1HZW4tMmEga2VybmVsOiBbICZu
YnNwOyAmbmJzcDsyLjE5NTM3Nl0gdGhpbmtwYWRfYWNwaTogVW5rbm93bi9yZXNlcnZlZCBtdWx0
aSBtb2RlIHZhbHVlIDB4MDAwMCBmb3IgdHlwZSA0LCBwbGVhc2UgcmVwb3J0IHRoaXMgdG8gPGEg
dGFyZ2V0PSJfYmxhbmsiIHJlbD0ibm9yZWZlcnJlciBub2ZvbGxvdyBub29wZW5lciIgaHJlZj0i
bWFpbHRvOmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCI+aWJtLWFjcGktZGV2
ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0PC9hPjwvc3Bhbj48YnI+PC9kaXY+PGRpdiBzdHlsZT0i
Zm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7Ij48YnI+PC9k
aXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6
IDE0cHg7Ij5JIHNlZSB0aGVyZSB3YXMgYSBtZXNzYWdlIGVhcmxpZXIgdGhpcyB5ZWFyICg8c3Bh
bj48YSB0YXJnZXQ9Il9ibGFuayIgcmVsPSJub3JlZmVycmVyIG5vZm9sbG93IG5vb3BlbmVyIiBo
cmVmPSJodHRwczovL3NvdXJjZWZvcmdlLm5ldC9wL2libS1hY3BpL21haWxtYW4vbWVzc2FnZS8z
NzY0NDE0OC8iPmh0dHBzOi8vc291cmNlZm9yZ2UubmV0L3AvaWJtLWFjcGkvbWFpbG1hbi9tZXNz
YWdlLzM3NjQ0MTQ4LzwvYT48L3NwYW4+KSB0aGF0IGlzIHBlcmhhcHMgYWJvdXQgdGhlIHNhbWUg
dGhpbmcuIEFib3V0IHRhYmxldCBtb2RlOiBXaGVuIGxvYWRpbmcgVWJ1bnR1LCB0aGUgc2NyZWVu
IGRvZXMgbm90IGFkanVzdCBvcmllbnRhdGlvbiB3aGVuIHRoZSBzY3JlZW4gaXMgZmxpcHBlZCB0
byB0YWJsZXQgbW9kZSwgYnV0IHdoZW4gbG9hZGluZyBVYnVudHUgb24gWCBpdCBkb2VzIHdvcmsu
IDxicj48L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZTogMTRweDsiPjxicj48L2Rpdj4NCjxkaXYgY2xhc3M9InByb3Rvbm1haWxfc2lnbmF0
dXJlX2Jsb2NrIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNp
emU6IDE0cHg7Ij4NCiAgICA8ZGl2IGNsYXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay11
c2VyIj4NCiAgICAgICAgU2VudCBmcm9tIDxhIGhyZWY9Imh0dHBzOi8vcHJvdG9ubWFpbC5jaCIg
cmVsPSJub29wZW5lciBub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+UHJvdG9uTWFpbDwvYT4s
IGVuY3J5cHRlZCBlbWFpbCBiYXNlZCBpbiBTd2l0emVybGFuZC48L2Rpdj4NCiAgICANCiAgICAg
ICAgICAgIDxkaXYgY2xhc3M9InByb3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2NrLXByb3RvbiBwcm90
b25tYWlsX3NpZ25hdHVyZV9ibG9jay1lbXB0eSI+DQogICAgICAgIA0KICAgICAgICAgICAgPC9k
aXY+DQo8L2Rpdj4NCg==


--b1_yay4iOJ7NKMCOh37Uddn9ImyTiDp41G40xRXKlbP3nk--



--===============2916902862100643578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2916902862100643578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============2916902862100643578==--


