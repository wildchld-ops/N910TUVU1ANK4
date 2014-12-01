.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# static fields
.field private static final DEFAULT_TIMER:J = 0x493e0L

.field private static final DEFAULT_TIMER_CHN:J = 0xea60L

.field private static final ON_AUTO_SAVE:I = 0x1

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final REPLACE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms/display_00"

.field private static final TIMER_FIRE:Ljava/lang/String; = "timer_fire"


# instance fields
.field mBody:Ljava/lang/String;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Landroid/telephony/SmsMessage;

.field private mMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBodyTextTouchListenerDA:Lcom/android/mms/util/UIUtils$OnLinkTouchListener;

.field private mRead:Z

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mSimSlot:I

.field private mTimerSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    iput v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    iput-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$3;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->cancelNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->processNextMessage()V

    return-void
.end method

.method private cancelNotification()V
    .locals 1

    const/16 v0, 0x3e7

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private displayZeroMessage(Landroid/content/Intent;Z)V
    .locals 17

    const-string v14, "pdu"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    const-string v14, "format"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v14, "body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "simSlot"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    :cond_0
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/ClassZeroActivity;->formatCBNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    invoke-static {v9, v14}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0c0083

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0c00da

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveClassZeroMessage()Z

    move-result v14

    if-eqz v14, :cond_2

    const v14, 0x7f0c00e1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    const/high16 v14, 0x1040000

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f04002f

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0b00c6

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0b00c7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0b00c6

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLinkDAUSA()Z

    move-result v14

    if-eqz v14, :cond_3

    const v14, 0x7f0b00c6

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ClassZeroActivity;->getOnLinkTouchListener()Lcom/android/mms/util/UIUtils$OnLinkTouchListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const v14, 0x7f0b00c6

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const-string v15, "#00AEEF"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    if-nez p2, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/transaction/MessagingNotification;->updateClass0SoundnVibrate(Landroid/content/Context;I)V

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-string v14, "ro.csc.sales_code"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "CHN"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "CHU"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "CHM"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "CHC"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_5
    const-wide/32 v14, 0xea60

    add-long/2addr v14, v7

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    goto/16 :goto_0

    :cond_6
    const v14, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    const-wide/32 v14, 0x493e0

    add-long/2addr v14, v7

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    goto/16 :goto_0
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "read"

    iget-boolean v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "seen"

    iget-boolean v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "callback_number"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sim_imsi"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    :cond_3
    const-string v2, "address"

    const v5, 0x7f0c013b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method private formatCBNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\nCB#: "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOnLinkTouchListener()Lcom/android/mms/util/UIUtils$OnLinkTouchListener;
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mOnBodyTextTouchListenerDA:Lcom/android/mms/util/UIUtils$OnLinkTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;-><init>(Landroid/app/Activity;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mOnBodyTextTouchListenerDA:Lcom/android/mms/util/UIUtils$OnLinkTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mOnBodyTextTouchListenerDA:Lcom/android/mms/util/UIUtils$OnLinkTouchListener;

    return-object v0
.end method

.method private processNextMessage()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Mms/display_00"

    const-string v1, "processNextMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const-string v0, "Mms/display_00"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNextMessage() : mMessageQueue.size()("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method private queueMsgFromIntent(Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "Mms/display_00"

    const-string v2, "queueMsgFromIntent()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 18

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v10

    const-string v1, "body"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sim_slot"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v17

    const-string v5, "address = ? AND protocol = ?"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v16, v6, v1

    const/4 v1, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_3

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v9

    :catchall_0
    move-exception v1

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0
.end method

.method private saveMessage()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "body"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sim_slot"

    iget v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0203a5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->queueMsgFromIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Mms/display_00"

    const-string v1, "onCreate : (!queueMsgFromIntent(getIntent()))(false)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;Z)V

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "simSlot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    iget v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateClass0SoundnVibrate(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Mms/display_00"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateClass0SoundnVibrate(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->queueMsgFromIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method protected onStart()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
