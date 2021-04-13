Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E5935DAA3
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 13 Apr 2021 11:07:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lWF04-0001G4-HW; Tue, 13 Apr 2021 09:06:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lWF01-0001Fr-Io
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 13 Apr 2021 09:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=crgVcT/Jxs2HK5Q2gYbWm5jeFDAYYxXlKqYesHDanoc=; b=ifBllZm/BW/BqcQCb2jhc9FN2I
 XKl9W8G0Scalk/wgGG+2/M8W+8AmG53coIK8v89HhVlUl3vTdBIfwVV5mBd5+1WQ63VIh1hOT/wrM
 VHh487g4NIIRIw4mrsHQaDdE1Iy4zCRcNm7B3U60hUjy/8cG0qUNBqN1df5Xr6tGnXug=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=crgVcT/Jxs2HK5Q2gYbWm5jeFDAYYxXlKqYesHDanoc=; b=WYdyqBVwuaMVWaQi2WO3Kqd5YL
 eqvfFUMYdu9zE5bFUYjXtaN/kyGmeWkhk13jXOOkZKW1FiKZ5Dv4ZDGdgCuNgtG+Agh7rKllr86QP
 EzH+Tyzo1YsjqoO6UrMzxeXcWXgVWgh3nGVUTRfW/VHHntjj05x765SPqS/6AZmM71gw=;
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lWEzv-0002l0-By
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 13 Apr 2021 09:06:21 +0000
Received: by mail-pl1-f180.google.com with SMTP id c2so415226plz.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 13 Apr 2021 02:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=crgVcT/Jxs2HK5Q2gYbWm5jeFDAYYxXlKqYesHDanoc=;
 b=dJ5awNztNyVRH98OA73i5djsUqp0V2+WXKnWq0gZzrN6oF008iiVCwE74+2jgBrsMC
 rxJ/BlpWDOEsJ/3TOePA/XxxRVXXB0vL2XaTUCkDnZHcWpb5/KXlXZDhgBcw67Hfdorv
 pLBBPifP3/28FYm3rfi4I+koc6oPQL9iz6qhaLrrf5SlXRw84StJOxWiR0ae/swodAcM
 ABHjPkl8ympW9FjRgAeA+shde+OhHLLTEkTTPsb/5jeF22QdHh8OEafh2TXBKAa7K6zw
 I2wlKPpeYy4HoE6lGViLCWSyLV0iwRkJGef1OSDhxRiIAsuEgYoaYlE9ZV3fDbRNVbEQ
 uaeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=crgVcT/Jxs2HK5Q2gYbWm5jeFDAYYxXlKqYesHDanoc=;
 b=LilsTh8C8AA32dLDyCylCWSQ+EpA6t41pxwKQ5tB1GPtrsK+hTlS8g4UVxX9hQ7RjM
 qtE3sBi4P/tSOSqFc7qJKjL/ODaXBAxSOyFyNvlFPTxtrCqcFY5EZAH1ChzM9WAreBkK
 rd1pUhztO2jYDyAGjgEIolwx+dC0IDn1RM4Y19VIVzPzq+9YdJgE55jSZs+sZpOZTwdO
 pdh+uykcDwR0vOm66nulrmOtLAv08YTlYhGR9h//tvhdlL6Fh8p6xerVf12PiWuE2CuD
 3EnXv4PF8OpPxVor84SmqHeHTrtjjJLvd4lQOFiLwHIJMcL8n6xa3TAnyuXs0FFzX6Kc
 WIpQ==
X-Gm-Message-State: AOAM5334nU8M1lbgBISZXlhTR6aXBTwiAiLVgESkf5tB/IMjZoWRpCIz
 4uS2DVrZNFH0JBBLVWCfwidy+aTbcdD8ZTZRMOU/DYbqK6w=
X-Google-Smtp-Source: ABdhPJwn30N0jO2QMysp+3LwoOKtlqA8+gliO7xNVhyUvzj4ZOwvF32703O2S7liiatvTpUjD3RCvh8jJDghgQgalwU=
X-Received: by 2002:a17:90a:5407:: with SMTP id
 z7mr3883030pjh.228.1618304769794; 
 Tue, 13 Apr 2021 02:06:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:fa86:0:0:0:0 with HTTP; Tue, 13 Apr 2021 02:06:08
 -0700 (PDT)
In-Reply-To: <20210413072112.183550-1-hdegoede@redhat.com>
References: <20210413072112.183550-1-hdegoede@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 13 Apr 2021 12:06:08 +0300
Message-ID: <CAHp75VeLrNN3bwERwp3oZg7pRJXMi0y8vAbw97NKoEmm33AfgQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.180 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lWEzv-0002l0-By
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Add
 labels to the first 2 temperature sensors
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
Cc: Mark Pearson <markpearson@lenovo.com>,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>,
 "ibm-acpi-devel@lists.sourceforge.net" <ibm-acpi-devel@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="===============3142463831666056722=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============3142463831666056722==
Content-Type: multipart/alternative; boundary="000000000000f1260905bfd6f032"

--000000000000f1260905bfd6f032
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tuesday, April 13, 2021, Hans de Goede <hdegoede@redhat.com> wrote:

> On EC version 3, the first 2 temperature sensors are always CPU and GPU
> add labels for these.
>
> This changes e.g. the "sensors" command output on a X1C8 from:
>
> thinkpad-isa-0000
> Adapter: ISA adapter
> fan1:        2694 RPM
> temp1:        +42.0=C2=B0C
> temp2:            N/A
> temp3:        +33.0=C2=B0C
> temp4:         +0.0=C2=B0C
> temp5:        +35.0=C2=B0C
> temp6:        +42.0=C2=B0C
> temp7:        +42.0=C2=B0C
> temp8:            N/A
>
> into:
>
> thinkpad-isa-0000
> Adapter: ISA adapter
> fan1:        2694 RPM
> CPU:          +42.0=C2=B0C
> GPU:              N/A
> temp3:        +33.0=C2=B0C
> temp4:         +0.0=C2=B0C
> temp5:        +35.0=C2=B0C
> temp6:        +42.0=C2=B0C
> temp7:        +42.0=C2=B0C
> temp8:            N/A
>
>
Is it an ABI change? Any updates to the documentation?

If the answer is yes, I would rather do one of the following approach:
1) enable labels by user request (sysfs knob)
2) just add additional two lines
3) add an additional column for labels (or completely another file)

I have understand that there are cons of each of them. I dunno which one is
the best.



> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 72 ++++++++++++++++++----------
>  1 file changed, 47 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/
> thinkpad_acpi.c
> index ec98089d98c9..dd60c9397d35 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -6296,6 +6296,8 @@ struct ibm_thermal_sensors_struct {
>  };
>
>  static enum thermal_access_mode thermal_read_mode;
> +static const struct attribute_group *thermal_attr_group;
> +static bool thermal_use_labels;
>
>  /* idx is zero-based */
>  static int thermal_get_sensor(int idx, s32 *value)
> @@ -6478,6 +6480,28 @@ static const struct attribute_group
> thermal_temp_input8_group =3D {
>  #undef THERMAL_SENSOR_ATTR_TEMP
>  #undef THERMAL_ATTRS
>
> +static ssize_t temp1_label_show(struct device *dev, struct
> device_attribute *attr, char *buf)
> +{
> +       return sysfs_emit(buf, "CPU\n");
> +}
> +static DEVICE_ATTR_RO(temp1_label);
> +
> +static ssize_t temp2_label_show(struct device *dev, struct
> device_attribute *attr, char *buf)
> +{
> +       return sysfs_emit(buf, "GPU\n");
> +}
> +static DEVICE_ATTR_RO(temp2_label);
> +
> +static struct attribute *temp_label_attributes[] =3D {
> +       &dev_attr_temp1_label.attr,
> +       &dev_attr_temp2_label.attr,
> +       NULL
> +};
> +
> +static const struct attribute_group temp_label_attr_group =3D {
> +       .attrs =3D temp_label_attributes,
> +};
> +
>  /* ---------------------------------------------------------------------
> */
>
>  static int __init thermal_init(struct ibm_init_struct *iibm)
> @@ -6533,12 +6557,14 @@ static int __init thermal_init(struct
> ibm_init_struct *iibm)
>                                 thermal_read_mode =3D TPACPI_THERMAL_NONE=
;
>                         }
>                 } else {
> -                       if (ver >=3D 3)
> +                       if (ver >=3D 3) {
>                                 thermal_read_mode =3D TPACPI_THERMAL_TPEC=
_8;
> -                       else
> +                               thermal_use_labels =3D true;
> +                       } else {
>                                 thermal_read_mode =3D
>                                         (ta2 !=3D 0) ?
>                                         TPACPI_THERMAL_TPEC_16 :
> TPACPI_THERMAL_TPEC_8;
> +                       }
>                 }
>         } else if (acpi_tmp7) {
>                 if (tpacpi_is_ibm() &&
> @@ -6560,44 +6586,40 @@ static int __init thermal_init(struct
> ibm_init_struct *iibm)
>
>         switch (thermal_read_mode) {
>         case TPACPI_THERMAL_TPEC_16:
> -               res =3D sysfs_create_group(&tpacpi_hwmon->kobj,
> -                               &thermal_temp_input16_group);
> -               if (res)
> -                       return res;
> +               thermal_attr_group =3D &thermal_temp_input16_group;
>                 break;
>         case TPACPI_THERMAL_TPEC_8:
>         case TPACPI_THERMAL_ACPI_TMP07:
>         case TPACPI_THERMAL_ACPI_UPDT:
> -               res =3D sysfs_create_group(&tpacpi_hwmon->kobj,
> -                               &thermal_temp_input8_group);
> -               if (res)
> -                       return res;
> +               thermal_attr_group =3D &thermal_temp_input8_group;
>                 break;
>         case TPACPI_THERMAL_NONE:
>         default:
>                 return 1;
>         }
>
> +       res =3D sysfs_create_group(&tpacpi_hwmon->kobj, thermal_attr_grou=
p);
> +       if (res)
> +               return res;
> +
> +       if (thermal_use_labels) {
> +               res =3D sysfs_create_group(&tpacpi_hwmon->kobj,
> &temp_label_attr_group);
> +               if (res) {
> +                       sysfs_remove_group(&tpacpi_hwmon->kobj,
> thermal_attr_group);
> +                       return res;
> +               }
> +       }
> +
>         return 0;
>  }
>
>  static void thermal_exit(void)
>  {
> -       switch (thermal_read_mode) {
> -       case TPACPI_THERMAL_TPEC_16:
> -               sysfs_remove_group(&tpacpi_hwmon->kobj,
> -                                  &thermal_temp_input16_group);
> -               break;
> -       case TPACPI_THERMAL_TPEC_8:
> -       case TPACPI_THERMAL_ACPI_TMP07:
> -       case TPACPI_THERMAL_ACPI_UPDT:
> -               sysfs_remove_group(&tpacpi_hwmon->kobj,
> -                                  &thermal_temp_input8_group);
> -               break;
> -       case TPACPI_THERMAL_NONE:
> -       default:
> -               break;
> -       }
> +       if (thermal_attr_group)
> +               sysfs_remove_group(&tpacpi_hwmon->kobj,
> thermal_attr_group);
> +
> +       if (thermal_use_labels)
> +               sysfs_remove_group(&tpacpi_hwmon->kobj,
> &temp_label_attr_group);
>  }
>
>  static int thermal_read(struct seq_file *m)
> --
> 2.31.1
>
>

--=20
With Best Regards,
Andy Shevchenko

--000000000000f1260905bfd6f032
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Tuesday, April 13, 2021, Hans de Goede &lt;<a href=3D"mailto:hde=
goede@redhat.com">hdegoede@redhat.com</a>&gt; wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On EC version 3, the first 2 temperature sensors are always C=
PU and GPU<br>
add labels for these.<br>
<br>
This changes e.g. the &quot;sensors&quot; command output on a X1C8 from:<br=
>
<br>
thinkpad-isa-0000<br>
Adapter: ISA adapter<br>
fan1:=C2=A0 =C2=A0 =C2=A0 =C2=A0 2694 RPM<br>
temp1:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +42.0=C2=B0C<br>
temp2:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 N/A<br>
temp3:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +33.0=C2=B0C<br>
temp4:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+0.0=C2=B0C<br>
temp5:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +35.0=C2=B0C<br>
temp6:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +42.0=C2=B0C<br>
temp7:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +42.0=C2=B0C<br>
temp8:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 N/A<br>
<br>
into:<br>
<br>
thinkpad-isa-0000<br>
Adapter: ISA adapter<br>
fan1:=C2=A0 =C2=A0 =C2=A0 =C2=A0 2694 RPM<br>
CPU:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 +42.0=C2=B0C<br>
GPU:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 N/A<br>
temp3:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +33.0=C2=B0C<br>
temp4:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+0.0=C2=B0C<br>
temp5:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +35.0=C2=B0C<br>
temp6:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +42.0=C2=B0C<br>
temp7:=C2=A0 =C2=A0 =C2=A0 =C2=A0 +42.0=C2=B0C<br>
temp8:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 N/A<br>
<br></blockquote><div><br></div><div>Is it an ABI change? Any updates to th=
e documentation?=C2=A0</div><div><br></div><div>If the answer is yes, I wou=
ld rather do one of the following approach:=C2=A0</div><div>1) enable label=
s by user request (sysfs knob)</div><div>2) just add additional two lines</=
div><div>3) add an additional column for labels (or completely another file=
)</div><div><br></div><div>I have understand that there are cons of each of=
 them. I dunno which one is the best.=C2=A0</div><div><br></div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
Signed-off-by: Hans de Goede &lt;<a href=3D"mailto:hdegoede@redhat.com">hde=
goede@redhat.com</a>&gt;<br>
---<br>
=C2=A0drivers/platform/x86/thinkpad_<wbr>acpi.c | 72 ++++++++++++++++++----=
------<br>
=C2=A01 file changed, 47 insertions(+), 25 deletions(-)<br>
<br>
diff --git a/drivers/platform/x86/<wbr>thinkpad_acpi.c b/drivers/platform/x=
86/<wbr>thinkpad_acpi.c<br>
index ec98089d98c9..dd60c9397d35 100644<br>
--- a/drivers/platform/x86/<wbr>thinkpad_acpi.c<br>
+++ b/drivers/platform/x86/<wbr>thinkpad_acpi.c<br>
@@ -6296,6 +6296,8 @@ struct ibm_thermal_sensors_struct {<br>
=C2=A0};<br>
<br>
=C2=A0static enum thermal_access_mode thermal_read_mode;<br>
+static const struct attribute_group *thermal_attr_group;<br>
+static bool thermal_use_labels;<br>
<br>
=C2=A0/* idx is zero-based */<br>
=C2=A0static int thermal_get_sensor(int idx, s32 *value)<br>
@@ -6478,6 +6480,28 @@ static const struct attribute_group thermal_temp_inp=
ut8_group =3D {<br>
=C2=A0#undef THERMAL_SENSOR_ATTR_TEMP<br>
=C2=A0#undef THERMAL_ATTRS<br>
<br>
+static ssize_t temp1_label_show(struct device *dev, struct device_attribut=
e *attr, char *buf)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quot;CPU\n&quot;);<br>
+}<br>
+static DEVICE_ATTR_RO(temp1_label);<br>
+<br>
+static ssize_t temp2_label_show(struct device *dev, struct device_attribut=
e *attr, char *buf)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quot;GPU\n&quot;);<br>
+}<br>
+static DEVICE_ATTR_RO(temp2_label);<br>
+<br>
+static struct attribute *temp_label_attributes[] =3D {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;dev_attr_temp1_label.attr,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;dev_attr_temp2_label.attr,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0NULL<br>
+};<br>
+<br>
+static const struct attribute_group temp_label_attr_group =3D {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.attrs =3D temp_label_attributes,<br>
+};<br>
+<br>
=C2=A0/* ------------------------------<wbr>------------------------------<=
wbr>--------- */<br>
<br>
=C2=A0static int __init thermal_init(struct ibm_init_struct *iibm)<br>
@@ -6533,12 +6557,14 @@ static int __init thermal_init(struct ibm_init_stru=
ct *iibm)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 thermal_read_mode =3D TPACPI_THERMAL=
_NONE;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (ver &gt;=3D 3)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (ver &gt;=3D 3) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 thermal_read_mode =3D TPACPI_THERMAL=
_TPEC_8;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0thermal_use_labels =3D true;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0} else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 thermal_read_mode =3D<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (ta2 !=
=3D 0) ?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TPACPI_T=
HERMAL_TPEC_16 : TPACPI_THERMAL_TPEC_8;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (acpi_tmp7) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (tpacpi_is_ibm()=
 &amp;&amp;<br>
@@ -6560,44 +6586,40 @@ static int __init thermal_init(struct ibm_init_stru=
ct *iibm)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (thermal_read_mode) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case TPACPI_THERMAL_TPEC_16:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D sysfs_creat=
e_group(&amp;tpacpi_<wbr>hwmon-&gt;kobj,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;thermal_temp_input16_group);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (res)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return res;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0thermal_attr_group =
=3D &amp;thermal_temp_input16_group;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case TPACPI_THERMAL_TPEC_8:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case TPACPI_THERMAL_ACPI_TMP07:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case TPACPI_THERMAL_ACPI_UPDT:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D sysfs_creat=
e_group(&amp;tpacpi_<wbr>hwmon-&gt;kobj,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;thermal_temp_input8_group);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (res)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return res;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0thermal_attr_group =
=3D &amp;thermal_temp_input8_group;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case TPACPI_THERMAL_NONE:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D sysfs_create_group(&amp;tpacpi_<wbr>hwm=
on-&gt;kobj, thermal_attr_group);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (res)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return res;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (thermal_use_labels) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D sysfs_creat=
e_group(&amp;tpacpi_<wbr>hwmon-&gt;kobj, &amp;temp_label_attr_group);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (res) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0sysfs_remove_group(&amp;tpacpi_<wbr>hwmon-&gt;kobj, thermal_attr_=
group);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return res;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
<br>
=C2=A0static void thermal_exit(void)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (thermal_read_mode) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0case TPACPI_THERMAL_TPEC_16:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sysfs_remove_group(=
&amp;tpacpi_<wbr>hwmon-&gt;kobj,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;thermal_temp_input16_gro=
up);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0case TPACPI_THERMAL_TPEC_8:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0case TPACPI_THERMAL_ACPI_TMP07:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0case TPACPI_THERMAL_ACPI_UPDT:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sysfs_remove_group(=
&amp;tpacpi_<wbr>hwmon-&gt;kobj,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;thermal_temp_input8_grou=
p);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0case TPACPI_THERMAL_NONE:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (thermal_attr_group)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sysfs_remove_group(=
&amp;tpacpi_<wbr>hwmon-&gt;kobj, thermal_attr_group);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (thermal_use_labels)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sysfs_remove_group(=
&amp;tpacpi_<wbr>hwmon-&gt;kobj, &amp;temp_label_attr_group);<br>
=C2=A0}<br>
<br>
=C2=A0static int thermal_read(struct seq_file *m)<br>
-- <br>
2.31.1<br>
<br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

--000000000000f1260905bfd6f032--


--===============3142463831666056722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3142463831666056722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============3142463831666056722==--

