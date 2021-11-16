Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99813453CD0
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Nov 2021 00:45:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mn88F-0005ZD-ET; Tue, 16 Nov 2021 23:44:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mn88E-0005Z6-2G
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 23:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i/zYkNCUZlVyrckDmA74NLg81SudakR1Pwy5z7y3Zuw=; b=ZGtaGPt1WaoYCZX/m9H4eECvKf
 2daRByLo2/D8nOMhRpJzzFXatv+WjNB9bW9JE4mxiwK5LPZOlBGmFgySorr83gvXdpcQWdOCUjIrG
 yaHw61f+1qHF2Aie+wjeSbzrVADgnkpvjSfjrDqWoRvuoDMdAm3JC2yfjE5uQgxFsjrs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i/zYkNCUZlVyrckDmA74NLg81SudakR1Pwy5z7y3Zuw=; b=RvYe0mS4kPjigHLbQiguYM3FUc
 mSKetCdAQc+fJqXvgHX2fg1BlEHPqWkEuCtZIFttJsPnszunL9usozncepfOppZvKlXhhYX0BR+WV
 wTiB1ROvxJwqFZB9RHuTynfNda8WQ1AIpInmRfu9JgNWvfaGFQTXYuuWZu4A3orPpbnE=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mn88D-0004PS-Lv
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 23:44:55 +0000
Date: Wed, 17 Nov 2021 00:44:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1637106282;
 bh=tm3TSfY4cAnVraxIAQpho/lmj5Z/rdD/Z5W8p2qmLxo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GLMIqtLK6GYAzsWagI5KaSSAAZZFPSRiSCf5dsOTx7NNHLjb7K7IwUTPVJ0t5UQ8F
 o3AO6mJgMAxkXPu1a/b8Y4LVDIpeMs0BrUe9YL3iFAPMXiqNNL7V4fYpzwUs2q6qgb
 CeUDrP2lEo+1dtauTKjpOM9j+FgmOpWtEOF6Ttls=
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
To: Mark Pearson <markpearson@lenovo.com>
Message-ID: <986a547b-67c5-4116-9b2a-d3ba7b2f7847@t-8ch.de>
References: <20211113104225.141333-1-linux@weissschuh.net>
 <20211113104225.141333-5-linux@weissschuh.net>
 <82ec6164-223b-940a-6992-48ccbe47a615@lenovo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82ec6164-223b-940a-6992-48ccbe47a615@lenovo.com>
Jabber-ID: thomas@t-8ch.de
X-Accept: text/plain, text/html;q=0.2, text/*;q=0.1
X-Accept-Language: en-us, en;q=0.8, de-de;q=0.7, de;q=0.6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Mark, On 2021-11-16 15:52-0500, Mark Pearson wrote: > On
    2021-11-13 05:42, Thomas Weißschuh wrote: > > This adds support for the
   inhibit-charge charge_behaviour through the > > embedded controller of Think
    [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mn88D-0004PS-Lv
Subject: Re: [ibm-acpi-devel] [External] [PATCH 4/4] platform/x86:
 thinkpad_acpi: support inhibit-charge
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
Cc: linrunner@gmx.net, nicolopiazzalunga@gmail.com, bberg@redhat.com,
 Hans de Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, hadess@hadess.net,
 smclt30p@gmail.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgTWFyaywKCk9uIDIwMjEtMTEtMTYgMTU6NTItMDUwMCwgTWFyayBQZWFyc29uIHdyb3RlOgo+
IE9uIDIwMjEtMTEtMTMgMDU6NDIsIFRob21hcyBXZWnDn3NjaHVoIHdyb3RlOgo+ID4gVGhpcyBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBpbmhpYml0LWNoYXJnZSBjaGFyZ2VfYmVoYXZpb3VyIHRocm91
Z2ggdGhlCj4gPiBlbWJlZGRlZCBjb250cm9sbGVyIG9mIFRoaW5rUGFkcy4KPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogVGhvbWFzIFdlacOfc2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0Pgo+ID4g
Cj4gPiAtLS0KPiA+IAo+ID4gVGhpcyBwYXRjaCBpcyBiYXNlZCBvbiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9wbGF0Zm9ybS1kcml2ZXIteDg2L2QyODA4OTMwLTU4NDAtNmZmYi0zYTU5LWQyMzVj
ZGIxZmUxNkBnbWFpbC5jb20vPj4gLS0tCj4gPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtw
YWRfYWNwaS5jIHwgNTUgKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIGIvZHJpdmVycy9wbGF0
Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4gPiBpbmRleCBlOGM5OGU5YWZmNzEuLjdjZDY0NzUy
NDBiMiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGku
Ywo+ID4gKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4gPiBAQCAt
OTMyMSw2ICs5MzIxLDggQEAgc3RhdGljIHN0cnVjdCBpYm1fc3RydWN0IG11dGVfbGVkX2RyaXZl
cl9kYXRhID0gewo+ID4gICNkZWZpbmUgU0VUX1NUT1AJIkJDU1MiCj4gPiAgI2RlZmluZSBHRVRf
RElTQ0hBUkdFCSJCRFNHIgo+ID4gICNkZWZpbmUgU0VUX0RJU0NIQVJHRQkiQkRTUyIKPiA+ICsj
ZGVmaW5lIEdFVF9JTkhJQklUCSJQU1NHIgo+ID4gKyNkZWZpbmUgU0VUX0lOSElCSVQJIkJJQ1Mi
Cj4gPiAgCj4gPiAgZW51bSB7Cj4gPiAgCUJBVF9BTlkgPSAwLAo+ID4gQEAgLTkzMzgsNiArOTM0
MCw3IEBAIGVudW0gewo+ID4gIAlUSFJFU0hPTERfU1RBUlQsCj4gPiAgCVRIUkVTSE9MRF9TVE9Q
LAo+ID4gIAlGT1JDRV9ESVNDSEFSR0UsCj4gPiArCUlOSElCSVRfQ0hBUkdFLAo+ID4gIH07Cj4g
PiAgCj4gPiAgc3RydWN0IHRwYWNwaV9iYXR0ZXJ5X2RhdGEgewo+ID4gQEAgLTk0MDksNiArOTQx
MiwxMyBAQCBzdGF0aWMgaW50IHRwYWNwaV9iYXR0ZXJ5X2dldChpbnQgd2hhdCwgaW50IGJhdHRl
cnksIGludCAqcmV0KQo+ID4gIAkJLyogVGhlIGZvcmNlIGRpc2NoYXJnZSBzdGF0dXMgaXMgaW4g
Yml0IDAgKi8KPiA+ICAJCSpyZXQgPSAqcmV0ICYgMHgwMTsKPiA+ICAJCXJldHVybiAwOwo+ID4g
KwljYXNlIElOSElCSVRfQ0hBUkdFOgo+ID4gKwkJLyogVGhpcyBpcyBhY3R1YWxseSByZWFkaW5n
IHBlYWsgc2hpZnQgc3RhdGUsIGxpa2UgdHBhY3BpLWJhdCBkb2VzICovCj4gPiArCQlpZiBBQ1BJ
X0ZBSUxVUkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKEdFVF9JTkhJQklULCByZXQsIGJhdHRl
cnkpKQo+ID4gKwkJCXJldHVybiAtRU5PREVWOwo+ID4gKwkJLyogVGhlIGluaGliaXQgY2hhcmdl
IHN0YXR1cyBpcyBpbiBiaXQgMCAqLwo+ID4gKwkJKnJldCA9ICpyZXQgJiAweDAxOwo+ID4gKwkJ
cmV0dXJuIDA7Cj4gPiAgCWRlZmF1bHQ6Cj4gPiAgCQlwcl9jcml0KCJ3cm9uZyBwYXJhbWV0ZXI6
ICVkIiwgd2hhdCk7Cj4gPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiA+IEBAIC05NDQ3LDYgKzk0NTcs
MjIgQEAgc3RhdGljIGludCB0cGFjcGlfYmF0dGVyeV9zZXQoaW50IHdoYXQsIGludCBiYXR0ZXJ5
LCBpbnQgdmFsdWUpCj4gPiAgCQkJcmV0dXJuIC1FTk9ERVY7Cj4gPiAgCQl9Cj4gPiAgCQlyZXR1
cm4gMDsKPiA+ICsJY2FzZSBJTkhJQklUX0NIQVJHRToKPiA+ICsJCS8qIFdoZW4gc2V0dGluZyBp
bmhpYml0IGNoYXJnZSwgd2Ugc2V0IGEgZGVmYXVsdCB2YWx1ZSBvZgo+ID4gKwkJICogYWx3YXlz
IGJyZWFraW5nIG9uIEFDIGRldGFjaCBhbmQgdGhlIGVmZmVjdGl2ZSB0aW1lIGlzIHNldCB0bwo+
ID4gKwkJICogYmUgcGVybWFuZW50Lgo+ID4gKwkJICogVGhlIGJhdHRlcnkgSUQgaXMgaW4gYml0
cyA0LTUsIDIgYml0cywKPiA+ICsJCSAqIHRoZSBlZmZlY3RpdmUgdGltZSBpcyBpbiBiaXRzIDgt
MjMsIDIgYnl0ZXMuCj4gPiArCQkgKiBBIHRpbWUgb2YgRkZGRiBpbmRpY2F0ZXMgZm9yZXZlci4K
PiA+ICsJCSAqLwo+ID4gKwkJcGFyYW0gPSB2YWx1ZTsKPiA+ICsJCXBhcmFtIHw9IGJhdHRlcnkg
PDwgNDsKPiA+ICsJCXBhcmFtIHw9IDB4RkZGRiA8PCA4Owo+ID4gKwkJaWYgKEFDUElfRkFJTFVS
RSh0cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwoU0VUX0lOSElCSVQsICZyZXQsIHBhcmFtKSkpIHsK
PiA+ICsJCQlwcl9lcnIoImZhaWxlZCB0byBzZXQgaW5oaWJpdCBjaGFyZ2Ugb24gJWQiLCBiYXR0
ZXJ5KTsKPiA+ICsJCQlyZXR1cm4gLUVOT0RFVjsKPiA+ICsJCX0KPiA+ICsJCXJldHVybiAwOwo+
ID4gIAlkZWZhdWx0Ogo+ID4gIAkJcHJfY3JpdCgid3JvbmcgcGFyYW1ldGVyOiAlZCIsIHdoYXQp
Owo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiBAQCAtOTQ2Nyw2ICs5NDkzLDggQEAgc3RhdGlj
IGludCB0cGFjcGlfYmF0dGVyeV9wcm9iZShpbnQgYmF0dGVyeSkKPiA+ICAJICogNCkgQ2hlY2sg
Zm9yIHN1cHBvcnQKPiA+ICAJICogNSkgR2V0IHRoZSBjdXJyZW50IGZvcmNlIGRpc2NoYXJnZSBz
dGF0dXMKPiA+ICAJICogNikgQ2hlY2sgZm9yIHN1cHBvcnQKPiA+ICsJICogNykgR2V0IHRoZSBj
dXJyZW50IGluaGliaXQgY2hhcmdlIHN0YXR1cwo+ID4gKwkgKiA4KSBDaGVjayBmb3Igc3VwcG9y
dAo+ID4gIAkgKi8KPiA+ICAJaWYgKGFjcGlfaGFzX21ldGhvZChoa2V5X2hhbmRsZSwgR0VUX1NU
QVJUKSkgewo+ID4gIAkJaWYgQUNQSV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChH
RVRfU1RBUlQsICZyZXQsIGJhdHRlcnkpKSB7Cj4gPiBAQCAtOTUxMyw2ICs5NTQxLDE2IEBAIHN0
YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfcHJvYmUoaW50IGJhdHRlcnkpCj4gPiAgCQkJYmF0dGVy
eV9pbmZvLmJhdHRlcmllc1tiYXR0ZXJ5XS5jaGFyZ2VfYmVoYXZpb3VycyB8PQo+ID4gIAkJCQlC
SVQoUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfRk9SQ0VfRElTQ0hBUkdFKTsKPiA+ICAJ
fQo+ID4gKwlpZiAoYWNwaV9oYXNfbWV0aG9kKGhrZXlfaGFuZGxlLCBHRVRfSU5ISUJJVCkpIHsK
PiA+ICsJCWlmIChBQ1BJX0ZBSUxVUkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKEdFVF9JTkhJ
QklULCAmcmV0LCBiYXR0ZXJ5KSkpIHsKPiA+ICsJCQlwcl9lcnIoIkVycm9yIHByb2JpbmcgYmF0
dGVyeSBpbmhpYml0IGNoYXJnZTsgJWRcbiIsIGJhdHRlcnkpOwo+ID4gKwkJCXJldHVybiAtRU5P
REVWOwo+ID4gKwkJfQo+ID4gKwkJLyogU3VwcG9ydCBpcyBtYXJrZWQgaW4gYml0IDUgKi8KPiA+
ICsJCWlmIChyZXQgJiBCSVQoNSkpCj4gPiArCQkJYmF0dGVyeV9pbmZvLmJhdHRlcmllc1tiYXR0
ZXJ5XS5jaGFyZ2VfYmVoYXZpb3VycyB8PQo+ID4gKwkJCQlCSVQoUE9XRVJfU1VQUExZX0NIQVJH
RV9CRUhBVklPVVJfSU5ISUJJVF9DSEFSR0UpOwo+ID4gKwl9Cj4gPiAgCj4gPiAgCWJhdHRlcnlf
aW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMgfD0KPiA+ICAJCUJJVChQ
T1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9BVVRPKTsKPiA+IEBAIC05NjczLDYgKzk3MTEs
MTEgQEAgc3RhdGljIHNzaXplX3QgY2hhcmdlX2JlaGF2aW91cl9zaG93KHN0cnVjdCBkZXZpY2Ug
KmRldiwKPiA+ICAJCQlyZXR1cm4gLUVOT0RFVjsKPiA+ICAJCWlmIChyZXQpCj4gPiAgCQkJYWN0
aXZlID0gUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfRk9SQ0VfRElTQ0hBUkdFOwo+ID4g
Kwl9IGVsc2UgaWYgKGF2YWlsYWJsZSAmIEJJVChQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9V
Ul9JTkhJQklUX0NIQVJHRSkpIHsKPiA+ICsJCWlmICh0cGFjcGlfYmF0dGVyeV9nZXQoSU5ISUJJ
VF9DSEFSR0UsIGJhdHRlcnksICZyZXQpKQo+ID4gKwkJCXJldHVybiAtRU5PREVWOwo+ID4gKwkJ
aWYgKHJldCkKPiA+ICsJCQlhY3RpdmUgPSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9J
TkhJQklUX0NIQVJHRTsKPiA+ICAJfQo+ID4gIAo+ID4gIAlyZXR1cm4gcG93ZXJfc3VwcGx5X2No
YXJnZV9iZWhhdmlvdXJfc2hvdyhkZXYsIGF2YWlsYWJsZSwgYWN0aXZlLCBidWYpOwo+ID4gQEAg
LTk3MTAsMTIgKzk3NTMsMjAgQEAgc3RhdGljIHNzaXplX3QgY2hhcmdlX2JlaGF2aW91cl9zdG9y
ZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gPiAgCXN3aXRjaCAoc2VsZWN0ZWQpIHsKPiA+ICAJY2Fz
ZSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9BVVRPOgo+ID4gIAkJcmV0ID0gdHBhY3Bp
X2JhdHRlcnlfc2V0KEZPUkNFX0RJU0NIQVJHRSwgYmF0dGVyeSwgMCk7Cj4gPiAtCQlpZiAocmV0
IDwgMCkKPiA+ICsJCXJldCA9IHRwYWNwaV9iYXR0ZXJ5X3NldChJTkhJQklUX0NIQVJHRSwgYmF0
dGVyeSwgMCkgfHwgcmV0Owo+ID4gKwkJaWYgKHJldCkKPiA+ICAJCQlyZXR1cm4gcmV0Owo+ID4g
IAkJYnJlYWs7Cj4gPiAgCWNhc2UgUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfRk9SQ0Vf
RElTQ0hBUkdFOgo+ID4gIAkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0KEZPUkNFX0RJU0NIQVJH
RSwgYmF0dGVyeSwgMSk7Cj4gPiAtCQlpZiAocmV0IDwgMCkKPiA+ICsJCXJldCA9IHRwYWNwaV9i
YXR0ZXJ5X3NldChJTkhJQklUX0NIQVJHRSwgYmF0dGVyeSwgMCkgfHwgcmV0Owo+ID4gKwkJaWYg
KHJldCkKPiA+ICsJCQlyZXR1cm4gcmV0Owo+ID4gKwkJYnJlYWs7Cj4gPiArCWNhc2UgUE9XRVJf
U1VQUExZX0NIQVJHRV9CRUhBVklPVVJfSU5ISUJJVF9DSEFSR0U6Cj4gPiArCQlyZXQgPSB0cGFj
cGlfYmF0dGVyeV9zZXQoRk9SQ0VfRElTQ0hBUkdFLCBiYXR0ZXJ5LCAwKTsKPiA+ICsJCXJldCA9
IHRwYWNwaV9iYXR0ZXJ5X3NldChJTkhJQklUX0NIQVJHRSwgYmF0dGVyeSwgMSkgfHwgcmV0Owo+
ID4gKwkJaWYgKHJldCkKPiA+ICAJCQlyZXR1cm4gcmV0Owo+ID4gIAkJYnJlYWs7Cj4gPiAgCWRl
ZmF1bHQ6Cj4gPiAKPiAKPiBJIGNhbiBjb25maXJtIHRoZSBiaXQgZmllbGRzIGFyZSBjb3JyZWN0
IGZvciB0aGVzZSBjYWxscyAoYXMgZm9yIHRoZQo+IHByZXZpb3VzIHBhdGNoKQoKVGhhbmtzIQoK
Q291bGQgeW91IGRvdWJsZWNoZWNrIHRoZSBiZWhhdmlvciBmb3IgbXVsdGlwbGUgYmF0dGVyaWVz
IHRvIG1heWJlIGZpbmQgYQpyZWFzb24gd2h5IEJBVDEgaXMgbm90IGluaGliaXRlZCBhcyByZXBv
cnRlZCBieSBUaG9tYXMgS29jaCBbMF0/Cgo+IENvdXBsZSBvZiB0aGluZ3MgdG8gbm90ZSwgYmFz
ZWQgb24gZmVlZGJhY2sgcHJldmlvdXNseSBmcm9tIHRoZSBGVyB0ZWFtCj4gdGhhdCBJIGZvdW5k
IHdoZW4gZGlnZ2luZyB0aHJ1IG15IGJhdHRlcnkgcmVsYXRlZCBlbWFpbHMuCj4gCj4gIkxlbm92
byBkb2Vzbid0IG9mZmljaWFsbHkgc3VwcG9ydCB0aGUgdXNlIG9mIHRoZXNlIGNhbGxzIC0gdGhl
eSdyZQo+IGludGVuZGVkIGZvciBpbnRlcm5hbCB1c2UiIChhdCB0aGlzIHBvaW50IGluIHRpbWUg
LSB0aGVyZSBpcyBzb21lCj4gZGlzY3Vzc2lvbiBhYm91dCBiYXR0ZXJ5IHJlY2FsaWJyYXRpb24g
c3VwcG9ydCBidXQgSSBkb24ndCBoYXZlIGRldGFpbHMKPiBJIGNhbiBzaGFyZSB0aGVyZSB5ZXQp
Lgo+IAo+IFRoZSBGVyB0ZWFtIGFsc28gbm90ZWQgdGhhdDoKPiAKPiAiQWN0dWFsIGJhdHRlcnkg
Y2hhcmdpbmcvZGlzY2hhcmdpbmcgYmVoYXZpb3JzIGFyZSBtYW5hZ2VkIGJ5IEVDRlcuIFNvCj4g
dGhlIHJlcXVlc3Qgb2YgQkRTUy9CSUNTIG1ldGhvZCBtYXkgYmUgcmVqZWN0ZWQgYnkgRUNGVyBm
b3IgdGhlIGN1cnJlbnQKPiBiYXR0ZXJ5IG1vZGUvc3RhdHVzLiBZb3UgaGF2ZSB0byBjaGVjayBp
ZiB0aGUgcmVxdWVzdCBvZiB0aGUgbWV0aG9kIGlzCj4gYWN0dWFsbHkgYXBwbGllZCBvciBub3Qi
Cj4gCj4gU28gZm9yIHRoZSBjYWxscyBhYm92ZSAoYW5kIGZvciB0aGUgQkRTUyBjYWxscyBpbiB0
aGUgcHJldmlvdXMgcGF0Y2gpIGl0Cj4gd291bGQgYmUgZ29vZCB0byBkbyBhIHJlYWQgYmFjayBv
ZiB0aGUgc2V0dGluZyB0byBlbnN1cmUgaXQgaGFzCj4gY29tcGxldGVkIHN1Y2Nlc3NmdWxseS4K
CkknbGwgYWRkIHRoYXQgZm9yIHYyLgoKPiBIb3BlIHRoYXQgaGVscHMKCkl0IGRvZXMsIHRoYW5r
cyEKClRob21hcwoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BsYXRmb3JtLWRyaXZlci14
ODYvOWNlYmJhODUtZjM5OS1hN2FhLTkxZjctMjM3ODUyMzM4ZGM1QGdteC5uZXQvCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwg
bWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
