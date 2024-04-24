Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D458B099E
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkK-0004Zq-DK;
	Wed, 24 Apr 2024 12:29:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbkH-0004Z1-As
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IuwwD+KTAfqJ+CY4F9iVqiDgMbPy75oW4icyRUiQ9/o=; b=EFpMBMo0IuJjIp9PfxcEdpe/OZ
 KhYZiS+VbQfNtRiLCCVqslr1nRsOrR86Rk8AkVBjD+oWxk/XJb+uhl2QFYQuhhRgrZXJUwF0r/X6l
 OR6sVsJSmw3MbvQLK3JBIR2Nam54so5GhqaRTT6/TCckY6+xLVHL+YWdzA0j/QF+xwuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IuwwD+KTAfqJ+CY4F9iVqiDgMbPy75oW4icyRUiQ9/o=; b=BkSOiyy7w4cth51ikPoZpuCwhd
 vnB/Sgosd4FAvmbAMse6ji30CtVqaiT4BQaDYDvn++Ux5KDzjMq1Ju2q1DvyGJJbBXq/zvhS8HWuL
 xh3HbZdlF46VOAVoLi07VED50ob+/BgpavEIq9Yh/V65wm9CozPwq2JF56SseZJlABAA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbkG-00022b-1y for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961727;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IuwwD+KTAfqJ+CY4F9iVqiDgMbPy75oW4icyRUiQ9/o=;
 b=KDUXeyHyq4+PiTtb0AlgW3BOnzrcuu28ZPVTJ8HQW/yZKOfeDuvMy1hM1ZaXZ9hk+IigM2
 EmhLvOF3wfjBCbJ9TzYT9RlYO+qNMxvqRjeJHc4m+ymKCmRt4uozr6NQjGCeJAFyPROJgc
 sQo0sCDQxGkjs2fn2KiK3iqGyC2fodw=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-532-z10U_yZVP5KqO6IxrAQCjA-1; Wed,
 24 Apr 2024 08:28:43 -0400
X-MC-Unique: z10U_yZVP5KqO6IxrAQCjA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0175B3C0009A;
 Wed, 24 Apr 2024 12:28:43 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D139FC01595;
 Wed, 24 Apr 2024 12:28:41 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:15 +0200
Message-ID: <20240424122834.19801-6-hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use tpacpi_input_send_key() in
 adaptive_keyboard_hotkey_notify_hotkey()
 instead of re-implementing it there. Note this change will also result in
 a behavioral change, key presses on the adaptive keyboard will now also send
 a EV_MSC event with the scancode, just like all other hotkey presses already
 do. This [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbkG-00022b-1y
Subject: [ibm-acpi-devel] [PATCH v2 05/24] platform/x86: thinkpad_acpi: Use
 tpacpi_input_send_key() in adaptive kbd code
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
 ibm-acpi-devel@lists.sourceforge.net, Nitin Joshi <njoshi1@lenovo.com>,
 Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VXNlIHRwYWNwaV9pbnB1dF9zZW5kX2tleSgpIGluIGFkYXB0aXZlX2tleWJvYXJkX2hvdGtleV9u
b3RpZnlfaG90a2V5KCkKaW5zdGVhZCBvZiByZS1pbXBsZW1lbnRpbmcgaXQgdGhlcmUuCgpOb3Rl
IHRoaXMgY2hhbmdlIHdpbGwgYWxzbyByZXN1bHQgaW4gYSBiZWhhdmlvcmFsIGNoYW5nZSwga2V5
IHByZXNzZXMgb24KdGhlIGFkYXB0aXZlIGtleWJvYXJkIHdpbGwgbm93IGFsc28gc2VuZCBhIEVW
X01TQyBldmVudCB3aXRoIHRoZSBzY2FuY29kZSwKanVzdCBsaWtlIGFsbCBvdGhlciBob3RrZXkg
cHJlc3NlcyBhbHJlYWR5IGRvLiBUaGlzIGlzIG5vdCBhIGJ1ZyBidXQKYSBmZWF0dXJlLgoKUmV2
aWV3ZWQtYnk6IElscG8gSsOkcnZpbmVuIDxpbHBvLmphcnZpbmVuQGxpbnV4LmludGVsLmNvbT4K
VGVzdGVkLWJ5OiBNYXJrIFBlYXJzb24gPG1wZWFyc29uLWxlbm92b0BzcXVlYmIuY2E+ClNpZ25l
ZC1vZmYtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Ci0tLQogZHJpdmVy
cy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgMTYgKystLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIGIvZHJpdmVycy9wbGF0Zm9y
bS94ODYvdGhpbmtwYWRfYWNwaS5jCmluZGV4IGJiNmI4ODBhNWI1MC4uMTI2ZTM5MzY3OTI0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKKysrIGIvZHJp
dmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCkBAIC0zNjcwLDcgKzM2NzAsNiBAQCBz
dGF0aWMgYm9vbCBhZGFwdGl2ZV9rZXlib2FyZF9ob3RrZXlfbm90aWZ5X2hvdGtleSh1bnNpZ25l
ZCBpbnQgc2NhbmNvZGUpCiB7CiAJaW50IGN1cnJlbnRfbW9kZSA9IDA7CiAJaW50IG5ld19tb2Rl
ID0gMDsKLQlpbnQga2V5Y29kZTsKIAogCXN3aXRjaCAoc2NhbmNvZGUpIHsKIAljYXNlIERGUl9D
SEFOR0VfUk9XOgpAQCAtMzcxMSwxOSArMzcxMCw4IEBAIHN0YXRpYyBib29sIGFkYXB0aXZlX2tl
eWJvYXJkX2hvdGtleV9ub3RpZnlfaG90a2V5KHVuc2lnbmVkIGludCBzY2FuY29kZSkKIAkJCQlz
Y2FuY29kZSk7CiAJCQlyZXR1cm4gZmFsc2U7CiAJCX0KLQkJa2V5Y29kZSA9IGhvdGtleV9rZXlj
b2RlX21hcFtzY2FuY29kZSAtIEZJUlNUX0FEQVBUSVZFX0tFWSArCi0JCQkJCSAgICAgVFBfQUNQ
SV9IT1RLRVlTQ0FOX0FEQVBUSVZFX1NUQVJUXTsKLQkJaWYgKGtleWNvZGUgIT0gS0VZX1JFU0VS
VkVEKSB7Ci0JCQltdXRleF9sb2NrKCZ0cGFjcGlfaW5wdXRkZXZfc2VuZF9tdXRleCk7Ci0KLQkJ
CWlucHV0X3JlcG9ydF9rZXkodHBhY3BpX2lucHV0ZGV2LCBrZXljb2RlLCAxKTsKLQkJCWlucHV0
X3N5bmModHBhY3BpX2lucHV0ZGV2KTsKLQotCQkJaW5wdXRfcmVwb3J0X2tleSh0cGFjcGlfaW5w
dXRkZXYsIGtleWNvZGUsIDApOwotCQkJaW5wdXRfc3luYyh0cGFjcGlfaW5wdXRkZXYpOwotCi0J
CQltdXRleF91bmxvY2soJnRwYWNwaV9pbnB1dGRldl9zZW5kX211dGV4KTsKLQkJfQorCQl0cGFj
cGlfaW5wdXRfc2VuZF9rZXkoc2NhbmNvZGUgLSBGSVJTVF9BREFQVElWRV9LRVkgKworCQkJCSAg
ICAgIFRQX0FDUElfSE9US0VZU0NBTl9BREFQVElWRV9TVEFSVCk7CiAJCXJldHVybiB0cnVlOwog
CX0KIH0KLS0gCjIuNDQuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL2libS1hY3BpLWRldmVsCg==
