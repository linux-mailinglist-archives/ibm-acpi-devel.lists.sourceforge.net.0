Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEC98B09A2
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Apr 2024 14:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzbkH-0004Yp-3g;
	Wed, 24 Apr 2024 12:29:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzbk9-0004Xo-5L
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P0fFkuOiWKmmmObDpl8hH0nQHtgU6pDtLPCFlXeghcg=; b=U1hjjBNL9Xws6mij4yOF7Pt/c/
 euwYxrx259fBXAqdknWBvju6bhcL4BDz6OFXi+PRVTuBTy92z6xaJuO2uvEniMRW9u5H9xQyOE2s3
 MtBUsnirJu181BAhS1aRrq4MrKhZK15umclY5qpfXpVvJPfwalrm0F+Q/uO7d9PlTgk0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P0fFkuOiWKmmmObDpl8hH0nQHtgU6pDtLPCFlXeghcg=; b=UIhXNAEZcIR3HvQK5Yc1u6hydA
 fpsEJ60xxztb8S2mADRu6sI6tIZc/eO69n9mIkedmAtntO1RcGVCnc5y9EvtU/ea8VNUGmkbddhZK
 PfrwitQmf9HE6XpFDBLSDb3bL3l8W2Kz1sEM7eX886YgMWE+tYNeQEN8kDH/Duib6anw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzbk7-00022J-Il for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 24 Apr 2024 12:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713961725;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=P0fFkuOiWKmmmObDpl8hH0nQHtgU6pDtLPCFlXeghcg=;
 b=RRSR96GaOkiBUC5I/pQHnMIGPHKusr5R7Ah/1Of4VSYSbEeROd64uZGD3zoYXw8NvpUaB0
 ashjnBh7rdfEEGq7OAq41NZiyw5hKZ0XbqY14YatMyDZHHf5cWLYOoYIvtuhv1B59bPxS+
 8yTFyS8KQ4eI6iSSSUWGHTXNxZiaNs8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-639-deU6skYlMIaXqDaeGmOkYA-1; Wed, 24 Apr 2024 08:28:40 -0400
X-MC-Unique: deU6skYlMIaXqDaeGmOkYA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4CC6E8DCFC4;
 Wed, 24 Apr 2024 12:28:40 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.195.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 28CD5C08EE0;
 Wed, 24 Apr 2024 12:28:39 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Apr 2024 14:28:13 +0200
Message-ID: <20240424122834.19801-4-hdegoede@redhat.com>
In-Reply-To: <20240424122834.19801-1-hdegoede@redhat.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  send_acpi_ev and ignore_acpi_ev are already initialized to
    true and false respectively by hotkey_notify() before calling the various
    helpers. Drop the needless re-initialization from the helpers. Reviewed-by:
    Ilpo Järvinen <ilpo.jarvinen@linux.intel.com> Tested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
    Signed-off-by: Hans de Goede <hdegoede@redhat.com> --- drivers/platform/x86/thinkpad_acp
    [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.129.124 listed in wl.mailspike.net]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [170.10.129.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzbk7-00022J-Il
Subject: [ibm-acpi-devel] [PATCH v2 03/24] platform/x86: thinkpad_acpi: Drop
 setting send_/ignore_acpi_ev defaults twice
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

c2VuZF9hY3BpX2V2IGFuZCBpZ25vcmVfYWNwaV9ldiBhcmUgYWxyZWFkeSBpbml0aWFsaXplZCB0
byB0cnVlIGFuZCBmYWxzZQpyZXNwZWN0aXZlbHkgYnkgaG90a2V5X25vdGlmeSgpIGJlZm9yZSBj
YWxsaW5nIHRoZSB2YXJpb3VzIGhlbHBlcnMuIERyb3AKdGhlIG5lZWRsZXNzIHJlLWluaXRpYWxp
emF0aW9uIGZyb20gdGhlIGhlbHBlcnMuCgpSZXZpZXdlZC1ieTogSWxwbyBKw6RydmluZW4gPGls
cG8uamFydmluZW5AbGludXguaW50ZWwuY29tPgpUZXN0ZWQtYnk6IE1hcmsgUGVhcnNvbiA8bXBl
YXJzb24tbGVub3ZvQHNxdWViYi5jYT4KU2lnbmVkLW9mZi1ieTogSGFucyBkZSBHb2VkZSA8aGRl
Z29lZGVAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMgfCAyNCArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0v
eDg2L3RoaW5rcGFkX2FjcGkuYyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGku
YwppbmRleCBmYzU2ODE4MDhjM2IuLjAwNzIyM2ZkZWQzMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9w
bGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCisrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3Ro
aW5rcGFkX2FjcGkuYwpAQCAtMzc1NCwxNCArMzc1NCwxMiBAQCBzdGF0aWMgYm9vbCBob3RrZXlf
bm90aWZ5X2V4dGVuZGVkX2hvdGtleShjb25zdCB1MzIgaGtleSkKIAlyZXR1cm4gZmFsc2U7CiB9
CiAKKy8qIDB4MTAwMC0weDFGRkY6IGtleSBwcmVzc2VzICovCiBzdGF0aWMgYm9vbCBob3RrZXlf
bm90aWZ5X2hvdGtleShjb25zdCB1MzIgaGtleSwKIAkJCQkgYm9vbCAqc2VuZF9hY3BpX2V2LAog
CQkJCSBib29sICppZ25vcmVfYWNwaV9ldikKIHsKLQkvKiAweDEwMDAtMHgxRkZGOiBrZXkgcHJl
c3NlcyAqLwogCXVuc2lnbmVkIGludCBzY2FuY29kZSA9IGhrZXkgJiAweGZmZjsKLQkqc2VuZF9h
Y3BpX2V2ID0gdHJ1ZTsKLQkqaWdub3JlX2FjcGlfZXYgPSBmYWxzZTsKIAogCS8qCiAJICogT3Jp
Z2luYWwgZXZlbnRzIGFyZSBpbiB0aGUgMHgxMFhYIHJhbmdlLCB0aGUgYWRhcHRpdmUga2V5Ym9h
cmQKQEAgLTM3OTQsMTQgKzM3OTIsMTEgQEAgc3RhdGljIGJvb2wgaG90a2V5X25vdGlmeV9ob3Rr
ZXkoY29uc3QgdTMyIGhrZXksCiAJcmV0dXJuIGZhbHNlOwogfQogCisvKiAweDIwMDAtMHgyRkZG
OiBXYWtldXAgcmVhc29uICovCiBzdGF0aWMgYm9vbCBob3RrZXlfbm90aWZ5X3dha2V1cChjb25z
dCB1MzIgaGtleSwKIAkJCQkgYm9vbCAqc2VuZF9hY3BpX2V2LAogCQkJCSBib29sICppZ25vcmVf
YWNwaV9ldikKIHsKLQkvKiAweDIwMDAtMHgyRkZGOiBXYWtldXAgcmVhc29uICovCi0JKnNlbmRf
YWNwaV9ldiA9IHRydWU7Ci0JKmlnbm9yZV9hY3BpX2V2ID0gZmFsc2U7Ci0KIAlzd2l0Y2ggKGhr
ZXkpIHsKIAljYXNlIFRQX0hLRVlfRVZfV0tVUF9TM19VTkRPQ0s6IC8qIHN1c3BlbmQsIHVuZG9j
ayAqLwogCWNhc2UgVFBfSEtFWV9FVl9XS1VQX1M0X1VORE9DSzogLyogaGliZXJuYXRpb24sIHVu
ZG9jayAqLwpAQCAtMzgzNCwxNCArMzgyOSwxMSBAQCBzdGF0aWMgYm9vbCBob3RrZXlfbm90aWZ5
X3dha2V1cChjb25zdCB1MzIgaGtleSwKIAlyZXR1cm4gdHJ1ZTsKIH0KIAorLyogMHg0MDAwLTB4
NEZGRjogZG9jay1yZWxhdGVkIGV2ZW50cyAqLwogc3RhdGljIGJvb2wgaG90a2V5X25vdGlmeV9k
b2NrZXZlbnQoY29uc3QgdTMyIGhrZXksCiAJCQkJIGJvb2wgKnNlbmRfYWNwaV9ldiwKIAkJCQkg
Ym9vbCAqaWdub3JlX2FjcGlfZXYpCiB7Ci0JLyogMHg0MDAwLTB4NEZGRjogZG9jay1yZWxhdGVk
IGV2ZW50cyAqLwotCSpzZW5kX2FjcGlfZXYgPSB0cnVlOwotCSppZ25vcmVfYWNwaV9ldiA9IGZh
bHNlOwotCiAJc3dpdGNoIChoa2V5KSB7CiAJY2FzZSBUUF9IS0VZX0VWX1VORE9DS19BQ0s6CiAJ
CS8qIEFDUEkgdW5kb2NrIG9wZXJhdGlvbiBjb21wbGV0ZWQgYWZ0ZXIgd2FrZXVwICovCkBAIC0z
ODc5LDE0ICszODcxLDExIEBAIHN0YXRpYyBib29sIGhvdGtleV9ub3RpZnlfZG9ja2V2ZW50KGNv
bnN0IHUzMiBoa2V5LAogCX0KIH0KIAorLyogMHg1MDAwLTB4NUZGRjogaHVtYW4gaW50ZXJmYWNl
IGhlbHBlcnMgKi8KIHN0YXRpYyBib29sIGhvdGtleV9ub3RpZnlfdXNyZXZlbnQoY29uc3QgdTMy
IGhrZXksCiAJCQkJIGJvb2wgKnNlbmRfYWNwaV9ldiwKIAkJCQkgYm9vbCAqaWdub3JlX2FjcGlf
ZXYpCiB7Ci0JLyogMHg1MDAwLTB4NUZGRjogaHVtYW4gaW50ZXJmYWNlIGhlbHBlcnMgKi8KLQkq
c2VuZF9hY3BpX2V2ID0gdHJ1ZTsKLQkqaWdub3JlX2FjcGlfZXYgPSBmYWxzZTsKLQogCXN3aXRj
aCAoaGtleSkgewogCWNhc2UgVFBfSEtFWV9FVl9QRU5fSU5TRVJURUQ6ICAvKiBYNjF0OiB0YWJs
ZXQgcGVuIGluc2VydGVkIGludG8gYmF5ICovCiAJY2FzZSBUUF9IS0VZX0VWX1BFTl9SRU1PVkVE
OiAgIC8qIFg2MXQ6IHRhYmxldCBwZW4gcmVtb3ZlZCBmcm9tIGJheSAqLwpAQCAtMzkxNCwxNCAr
MzkwMywxMSBAQCBzdGF0aWMgYm9vbCBob3RrZXlfbm90aWZ5X3VzcmV2ZW50KGNvbnN0IHUzMiBo
a2V5LAogc3RhdGljIHZvaWQgdGhlcm1hbF9kdW1wX2FsbF9zZW5zb3JzKHZvaWQpOwogc3RhdGlj
IHZvaWQgcGFsbXNlbnNvcl9yZWZyZXNoKHZvaWQpOwogCisvKiAweDYwMDAtMHg2RkZGOiB0aGVy
bWFsIGFsYXJtcy9ub3RpY2VzIGFuZCBrZXlib2FyZCBldmVudHMgKi8KIHN0YXRpYyBib29sIGhv
dGtleV9ub3RpZnlfNnh4eChjb25zdCB1MzIgaGtleSwKIAkJCQkgYm9vbCAqc2VuZF9hY3BpX2V2
LAogCQkJCSBib29sICppZ25vcmVfYWNwaV9ldikKIHsKLQkvKiAweDYwMDAtMHg2RkZGOiB0aGVy
bWFsIGFsYXJtcy9ub3RpY2VzIGFuZCBrZXlib2FyZCBldmVudHMgKi8KLQkqc2VuZF9hY3BpX2V2
ID0gdHJ1ZTsKLQkqaWdub3JlX2FjcGlfZXYgPSBmYWxzZTsKLQogCXN3aXRjaCAoaGtleSkgewog
CWNhc2UgVFBfSEtFWV9FVl9USE1fVEFCTEVfQ0hBTkdFRDoKIAkJcHJfZGVidWcoIkVDIHJlcG9y
dHM6IFRoZXJtYWwgVGFibGUgaGFzIGNoYW5nZWRcbiIpOwotLSAKMi40NC4wCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1h
aWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
