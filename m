Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F37ADFDA
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  9 Sep 2019 22:18:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1i7Q6i-0007ax-2x; Mon, 09 Sep 2019 20:17:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vwittich@gmail.com>) id 1i7Q6g-0007ao-Ar
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 09 Sep 2019 20:17:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Message-ID:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4m1OuHk5lvw+xQWrW8qwbJEVqSlJj9BsBNDO4/JjNsA=; b=TUmBkGbSGfZ6WD1hjh0dK2sl+9
 GBKsDvkceEPrNkWyysacc/rRGB2GG1Pizp5zQZBfCLzR461/HrM0TwdkpMez/2VsuKN+Ao20L7qLj
 3/uWy72LTLgRaOadIIf+0qEz02KvIR1Qfp2EYZKBy4P5Rz1Q1XxSrqdUTefYOt5LQVrc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Message-ID:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4m1OuHk5lvw+xQWrW8qwbJEVqSlJj9BsBNDO4/JjNsA=; b=X
 3TjXyaiey7rJ1NycG0oangx898B/XPrjKQjExqcT0VPIDOygS1JtcrJUsqf9SdRCsJy4NY7qi0vpY
 lKojQCbQE6rA8auGe7nlTlvCeiP3sbbcFxbv/fcp/cF/ry3kKK8WhJE32dA6fVj9bYNR0fHdvNDA6
 dZa2yx93ViAvyOsE=;
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i7Q6e-00FUc9-9U
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 09 Sep 2019 20:17:50 +0000
Received: by mail-wr1-f48.google.com with SMTP id k6so3547805wrn.11
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 09 Sep 2019 13:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language;
 bh=4m1OuHk5lvw+xQWrW8qwbJEVqSlJj9BsBNDO4/JjNsA=;
 b=SGj7ILzMUCEFnWJWm0JlRKA/jyt2lVYcj6KYZDVmQsZTPkUOJKBqP2/6shgUXNWqzm
 kRr3JqWRLMijGOaYLD6Pm4Rakk4UZ9rOWLf9ylQMrSxZdnMht9lCwfc34Ov1ojkAD7TN
 w+LQXaWWIXtdQO2D2G/UMD3YQi7zuO0nXRjUaYWOKs5DlgPg0FBhUkDgmXjUBuQ1kqTc
 j4dFOtGb2UsOmS3iBpKQJczhmbSGZJvVtGCnor97C8go8TyDu30lV9+VF92XXy8R3uDR
 WAdq26o7jHUvYSqr9SGLdbw74GVuuPl/FbURHBwGCbsaEFbu+Xrl5JM1AIPfXWRbqgW+
 vb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language;
 bh=4m1OuHk5lvw+xQWrW8qwbJEVqSlJj9BsBNDO4/JjNsA=;
 b=paaTy1ECRDIxR48Vl0YJxvBIyplCaOc2jisG6G3x2UEAg+JzZjNTUoBn9CBKbcMyjY
 N3JlVmHa4Zv8nZ0ErgHSc5w9W7jBO7fNlMuhpNdcz5zSwcYuzNLATkzgUK41jYqCxA0z
 WAROHpAIZaOi+WtCX4R9xDR8lNMQ765A+ZYdooz/JDQcNsEgrRZqhNymbXKjl7ceEFk0
 WLDgjdFf2IQQxo+cEEWak0d710gtqHA2Em09z44vBKpmQ04Z9nxzqf6U6aksUOcSdn4d
 ZAlKjv+oiAkYM4MVTZGTPMk7Z1yYs0AO0i0/uxk+Uo5W+w5EnBKXbXerhjA6KRv5Hd0i
 jeCQ==
X-Gm-Message-State: APjAAAVfebmOntBrwQKMMLfqAGnBfos9yc5Y/VnAzXRdtw9+W+Yego1X
 G/qqhz5rrYR+imh/utuVnxR5MUCIrtE=
X-Google-Smtp-Source: APXvYqwpDzdm2aja3AAZCDoC6uSTQuhWoqmmAjs5AOeTp5UxTC0QwTJ0v6L48MX8w1P+1LCmLKhoTA==
X-Received: by 2002:a5d:46c4:: with SMTP id g4mr19345410wrs.189.1568060261240; 
 Mon, 09 Sep 2019 13:17:41 -0700 (PDT)
Received: from [192.168.23.57] (b2b-78-94-47-222.unitymedia.biz.
 [78.94.47.222])
 by smtp.gmail.com with ESMTPSA id v4sm24601609wrg.56.2019.09.09.13.17.39
 for <ibm-acpi-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 13:17:40 -0700 (PDT)
From: Valentin Wittich <vwittich@gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <29661067-7fc5-d28f-bd89-89ec296b8806@gmail.com>
Date: Mon, 9 Sep 2019 22:17:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (vwittich[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i7Q6e-00FUc9-9U
Subject: [ibm-acpi-devel] Bug after setting T480 asleep at the Docking
 Station and let it wake up without Docking Station
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
Content-Type: multipart/mixed; boundary="===============4490980129228679076=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============4490980129228679076==
Content-Type: multipart/alternative;
 boundary="------------C767EE0ADF7D8F5B782AF5FF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C767EE0ADF7D8F5B782AF5FF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi there,

I have repeatedly an issue wake my T480 up after it was send to sleep at
the docking staging.

Dmesg shows:

[47440.178305] thinkpad_acpi: unknown possible thermal alarm or keyboard event received
[47440.178308] thinkpad_acpi: unhandled HKEY event 0x6032
[47440.178310] thinkpad_acpi: please report the conditions when this event happened to ibm-acpi-devel@lists.sourceforge.net
[47440.187406] thinkpad_acpi: unknown possible thermal alarm or keyboard event received
[47440.187407] thinkpad_acpi: unhandled HKEY event 0x6032
[47440.187408] thinkpad_acpi: please report the conditions when this event happened to ibm-acpi-devel@lists.sourceforge.net
[47440.189743] ACPI: EC: interrupt unblocked

Any further infos/tests I can provide?

Regards Valentin


--------------C767EE0ADF7D8F5B782AF5FF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi there,</p>
    <p>I have repeatedly an issue wake my T480 up after it was send to
      sleep at the docking staging. <br>
    </p>
    <p>Dmesg shows:</p>
    <pre>[47440.178305] thinkpad_acpi: unknown possible thermal alarm or keyboard event received
[47440.178308] thinkpad_acpi: unhandled HKEY event 0x6032
[47440.178310] thinkpad_acpi: please report the conditions when this event happened to <a class="moz-txt-link-abbreviated" href="mailto:ibm-acpi-devel@lists.sourceforge.net" moz-do-not-send="true">ibm-acpi-devel@lists.sourceforge.net</a>
[47440.187406] thinkpad_acpi: unknown possible thermal alarm or keyboard event received
[47440.187407] thinkpad_acpi: unhandled HKEY event 0x6032
[47440.187408] thinkpad_acpi: please report the conditions when this event happened to <a class="moz-txt-link-abbreviated" href="mailto:ibm-acpi-devel@lists.sourceforge.net" moz-do-not-send="true">ibm-acpi-devel@lists.sourceforge.net</a>
[47440.189743] ACPI: EC: interrupt unblocked
</pre>
    <p>Any further infos/tests I can provide?</p>
    <p>Regards Valentin<br>
    </p>
  </body>
</html>

--------------C767EE0ADF7D8F5B782AF5FF--


--===============4490980129228679076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4490980129228679076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============4490980129228679076==--

