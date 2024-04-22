Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2848AC66C
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 22 Apr 2024 10:13:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryon3-0002oh-2D;
	Mon, 22 Apr 2024 08:12:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1ryon0-0002oX-ID
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 08:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qbDlLFNVO4x6gAeeU7l2z+E9coMIS5aOXfWsGqCnv7M=; b=gij++cZaMspw1YFagpMx4xR0lk
 W1ZmG+BqXprlQIgVusq29e3fNNOdBgD26suS1DT5g7DP0IroNNZf/onJiRHo3wd4hmbn3biUqRfwa
 2C/K37TzMEIUmgJ/ZzoifwQxP6FzjDBiAbHS305kedTzu3K5Ej4oOjxQ+U2a3dD77wZI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qbDlLFNVO4x6gAeeU7l2z+E9coMIS5aOXfWsGqCnv7M=; b=dTS6F5elUYFRtzoLY9IjqL+VmM
 iwIHfKwbDPZtrvLOf7hnSL4aDwcYVosvqg+gGLpZyKsjoINRrc1IAd7IDcrEqKnU7PtunHt3HbcXF
 4IvWmnj5DQIrSuQmufkzlJJaY8FbCaORzy2C/RGP1AX0xeiqDbZWEN8PeGUaI5TYLU78=;
Received: from mail-ej1-f42.google.com ([209.85.218.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ryomz-0001ro-67 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 22 Apr 2024 08:12:38 +0000
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-a5224dfa9adso690250766b.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 22 Apr 2024 01:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713773545; x=1714378345; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qbDlLFNVO4x6gAeeU7l2z+E9coMIS5aOXfWsGqCnv7M=;
 b=U87rjnqbXowvEjO+Nma0IxUHbgK+5Nlt6vDdINM1rtUN5UL8P4rOkDfcnVrJzMdeJF
 BOuArzHx2oVCIIz/Ufb8nrj4m/CNvkEBtWq/rj8gm9alj0ZCXjKjpbNkAHMYnnDUD+Qj
 cfP0fQuuiUZE5FEGNukwl1KhnA9JkyVIHpMMgg+Xo6Hd7eTb4p4scOCbpYY3htmtGWHA
 Sqw8NAmd4C8lQavyi8w0s02ZY8JC1kdTrNcEds5jdJd3PILPmhF/JSTzAdRTrzCfSfg/
 LVFdSsaYIBHheLpbJlcu4RX5cFKDRGIltjQQQ/uN66QFvvJ/sGl7uea/zfeyEYObpRaX
 0EKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713773545; x=1714378345;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qbDlLFNVO4x6gAeeU7l2z+E9coMIS5aOXfWsGqCnv7M=;
 b=ED55lWuVXXjAE63rwVYmbYCsBeyViMfvshDdWpVV6ZYft1l4vZrkD51Nfp/ABV8wZ2
 ZyNGhiyw/5xpKlzLJcoQzk42mvGh5AZ661WBIyswzfQcwTBglnzhcMYv7WyZ2/yiaPZJ
 tazZVGWbUkf/eal34V4NGBVryjuWFX7Qpx8/3XgwqXs+8ngzKwG/pF52Yo3WNvn0c1Ij
 wQqRdy9ZHSWLlKE8MwIzyE1jMbpbS3s5v6ME2H3KOTcPtbmCeX22J9nlpoib6TA4z80w
 EBTEhBb1Kg2JqelfbrNzkqyLOgFqTgL/SBBsiwslxFAlfj9FfSGW//d6YWFkjvten6cf
 2wkg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQTL8McZaFHKJaJkunYEvCS7ioBbX4MCSP3NvTQ9z39bkj9kx5oPdA4TTaAZXCxvGNYQHpZ5v4uBQyDiTpMpQjp99JMYwOQA7rqxtFoGi9Es+Wabg=
X-Gm-Message-State: AOJu0YwNNAT1DwDo+IeAep6VsBmHP5Tx77VVo/H94vC4b62NRuXzEmLh
 yL2CyMHSuidjNd7uID1WKQZWV0peS0hjmxSyF8BnBhvPQPF9o95Oebc6KDcp3kxRmJALpEag+A7
 t55rP63lQsYnmnfEsT7RsStRBmL4=
X-Google-Smtp-Source: AGHT+IE69oOFWfi7CqD5yKNcCqmBI6jkWHnZQALlp+F8+Gi10+mfcsCi/kqrocVwuuY9mCR118pQRgcJ34nxFf+iA58=
X-Received: by 2002:a17:907:94cb:b0:a55:b25e:a2df with SMTP id
 dn11-20020a17090794cb00b00a55b25ea2dfmr2953969ejc.37.1713773544603; Mon, 22
 Apr 2024 01:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-4-hdegoede@redhat.com>
 <4f62150d-da65-7ecf-fc5d-50afa5dfccb3@linux.intel.com>
In-Reply-To: <4f62150d-da65-7ecf-fc5d-50afa5dfccb3@linux.intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Apr 2024 11:11:47 +0300
Message-ID: <CAHp75VffM9nygSf-5Hn7wvo-sE6awma2VoFumnV9Xjj5d_d-pw@mail.gmail.com>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Apr 22, 2024 at 11:07 AM Ilpo Järvinen wrote: >
    On Sun, 21 Apr 2024, Hans de Goede wrote: > > > send_acpi_ev, ignore_acpi_ev
    are already initialized to true resp. false by > > Wording her [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [209.85.218.42 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.218.42 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ryomz-0001ro-67
Subject: Re: [ibm-acpi-devel] [PATCH 03/24] platform/x86: thinkpad_acpi:
 Drop setting send_/ignore_acpi_ev defaults twice
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
Cc: Andy Shevchenko <andy@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Vishnu Sankar <vishnuocv@gmail.com>, Mark Pearson <mpearson-lenovo@squebb.ca>,
 Nitin Joshi <njoshi1@lenovo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gTW9uLCBBcHIgMjIsIDIwMjQgYXQgMTE6MDfigK9BTSBJbHBvIErDpHJ2aW5lbgo8aWxwby5q
YXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+IE9uIFN1biwgMjEgQXByIDIwMjQsIEhh
bnMgZGUgR29lZGUgd3JvdGU6Cj4KPiA+IHNlbmRfYWNwaV9ldiwgaWdub3JlX2FjcGlfZXYgYXJl
IGFscmVhZHkgaW5pdGlhbGl6ZWQgdG8gdHJ1ZSByZXNwLiBmYWxzZSBieQo+Cj4gV29yZGluZyBo
ZXJlIGlzIG9kZCAoYnV0IEknbSBub3QgbmF0aXZlIHNvIGNvdWxkIGJlIEkganVzdCBkb24ndAo+
IHVuZGVyc3RhbmQgd2hhdCAidHJ1ZSByZXNwLiBmYWxzZSIgaXMgc3VwcG9zZWQgdG8gbWVhbi9m
aXQgaW50byB0aGUKPiBnZW5lcmFsIHN0cnVjdHVyZSBvZiB0aGlzIHNlbnRlbmNlKS4gSSBjb3Vs
ZCBub25ldGhlbGVzcyBndWVzcyB0aGUKPiBnZW5lcmFsIG1lYW5pbmcgb2YgdGhlIHNlbnRlbmNl
IGRlc3BpdGUgdGhhdCwgYnV0IHlvdSBtaWdodCB3YW50IHRvCj4gY29uc2lkZXIgcmV3b3JkaW5n
IGl0IGludG8gc29tZXRoaW5nIHRoYXQgaXMgZWFzaWVyIHRvIHVuZGVyc3RhbmQuCgpJIHJlYWQg
dGhhdCBhcyAidHJ1ZSBhbmQgZmFsc2UgcmVzcGVjdGl2ZWx5Iiwgd2hpY2ggaXMgcHJvYmFibHkg
YmV0dGVyCnRvIGJlIHNwZWxsZWQgdGhpcyB3YXkuCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFu
ZHkgU2hldmNoZW5rbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vaWJtLWFjcGktZGV2ZWwK
