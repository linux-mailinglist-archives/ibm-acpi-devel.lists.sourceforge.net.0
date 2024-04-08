Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E16DF89CEF8
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  9 Apr 2024 01:32:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rtySw-0008Ry-A9;
	Mon, 08 Apr 2024 23:31:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1rtySv-0008Rp-BJ
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 23:31:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZzTpKViV2Dcm/KyMkuaFPP0/U/kgyCGskJ3yYQuoi34=; b=gAaW4XbbN1T3b4Cl8ixJezM12X
 yXJ1xzPmUO7z3c0vxMQWrT3m/HEvozfzQrarJdnYh+EBPjhOc/Tn9ylrmGINhS1WMFpCmkh6IJqhE
 WgPG8+oeMKu/UeyAEtixV7UDui7uJMIl8UtRJleufumd+NQG2n9WoZUAQ6IUf4HUX0uY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZzTpKViV2Dcm/KyMkuaFPP0/U/kgyCGskJ3yYQuoi34=; b=actPZ72svl7OITFWGsvZ0rII/7
 josnFyA6ggxzEISzDs3f905U30mVa9TYtfeJo0IfUYHfu4xSuMHfMp+zRSyXTbp2TOO/DydQhJnqy
 FBJ1xWsmmoYxJVtdrOy18QM2RcWeQBiGWgO6bfZr6fAEj1k8IrZYd+YyXBwKoJ+uxbAw=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rtySs-0006fb-Fm for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 23:31:53 +0000
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-1e4149e7695so11935095ad.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Apr 2024 16:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712619100; x=1713223900; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZzTpKViV2Dcm/KyMkuaFPP0/U/kgyCGskJ3yYQuoi34=;
 b=a+VjBsGVVSyJfiwL/UJKTbUlYV3OnhiCCbqV2EHm2+y+aK0o5LrP/H13nByk4M8CiE
 3I66iHpCv/GBdBKaQCjczd+P0wHHtxJX4nBY8avkaZvX0r9eze5sytgMIp9+RfuUoRMq
 V00m0LWPjoSl4EUOwIQSHuinyV/IyhViLDOLP5NI8w4CUzNYmmf6/MxWQAmh10xytIkz
 ppIlGxazvfD1X301ej/QCK/rOaJCX9BnY6plHARcy6ayVDHSjutgm2vdONS6nwZUjFOk
 h8weRnWZHgDG3qJJPdYsnjHph6I9uQnqY6waUCG6JmHiaxbeKoIg6jNSNQW6dJywQWVQ
 ufgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712619100; x=1713223900;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZzTpKViV2Dcm/KyMkuaFPP0/U/kgyCGskJ3yYQuoi34=;
 b=BWTEuHZsCTOA/V70L4S6KwV8mu3OE5PI8viLqLgAwVhFf7S6zjSIUIPZFd+u6+W/oy
 IpzfSDA4QcHc22KH8iMAX0v/EAsgQf/y5SJYg/lBlKmcncQWMITHZZuJ1uRJCWZyLYEX
 thgS4LH3oDPHWQhfxNpQFZInYg6xAeenEKnMip9sCAXc3RQCn+y1B/bBrXxFYNSyBVct
 mf2oRu039Ft/K/664TD+uf/ZeoX7vTTr7woHxMiIAwzjZ6Nda9dbFbOX0+2pWw8B2q/X
 Ka7ExGZ69sqX+11CXmymWBE58VsKCjgFvr6egekU4tNYxrA1GT1jfR8Gm0cWPHRJFbSN
 MRnQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVotKCpqRwBbw0oAdZdc1zIWZ9wOIKvNFc2W3r7IApHmNmDAOHt1maXfl8ypIB/pTjH15jv5JvHv94sm2IaB3j4cxPjGq5F2bO7NPkTiGirSTVCCqI=
X-Gm-Message-State: AOJu0Yw4JQ/wj8g8KAyxk+pc4YshVrYrDnGBa0RJ8bu/QKWKjEM74LHY
 rXRsHl6KefAIue1mRc5LqFpRQQ53VI+kFnTjr+d/4QFAQSCzT5ij
X-Google-Smtp-Source: AGHT+IFS3F36fsetJvUPZpbat4+TSuZ7yDpgMTewKajtRAYjXpPSRT5ZA67Q5InVAxnXRnhV/VFnHw==
X-Received: by 2002:a17:902:c946:b0:1e4:24bc:48e with SMTP id
 i6-20020a170902c94600b001e424bc048emr4222078pla.22.1712619099622; 
 Mon, 08 Apr 2024 16:31:39 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:a480:1072:3aaf:99a0])
 by smtp.gmail.com with ESMTPSA id
 jj20-20020a170903049400b001dee9d80bdcsm7569687plb.107.2024.04.08.16.31.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Apr 2024 16:31:39 -0700 (PDT)
Date: Mon, 8 Apr 2024 16:31:36 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <ZhR-WPx7dgKxziMb@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On Sun, Mar 24, 2024 at 05:07:58PM -0400,
 Mark Pearson
 wrote: > Add support for new input events on Lenovo laptops that need
 exporting
 to > user space. > > Lenovo trackpoints are adding the ability to [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
X-Headers-End: 1rtySs-0006fb-Fm
Subject: Re: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap
 and system debug info keycodes
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, vsankar@lenovo.com, hdegoede@redhat.com,
 hmh@hmh.eng.br, linux-input@vger.kernel.org, ilpo.jarvinen@linux.intel.com,
 peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
> Add support for new input events on Lenovo laptops that need exporting to
> user space.
> 
> Lenovo trackpoints are adding the ability to generate a doubletap event.
> Add a new keycode to allow this to be used by userspace.

What is the intended meaning of this keycode? How does it differ from
the driver sending BTN_LEFT press/release twice?
> 
> Lenovo support is using FN+N with Windows to collect needed details for
> support cases. Add a keycode so that we'll be able to provide similar
> support on Linux.

Is there a userspace consumer for this?

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
