.class public Lcom/android/mms/cover/CoverMsgList;
.super Ljava/lang/Object;
.source "CoverMsgList.java"


# static fields
.field private static final COVER_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field protected static final DEFAULT_AVATAR_IMAGE:[I

.field public static final GROUP_SNIPPET:Ljava/lang/String; = "group_snippet"

.field private static final TAG:Ljava/lang/String; = "Mms/CoverMsgList"

.field private static final TYPE_S_VIEW_CHARGER_COVER:I = 0x3

.field private static final TYPE_S_VIEW_COVER:I = 0x1

.field private static final TYPE_S_VIEW_WALLET_COVER:I = 0x6

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unread_count"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mContactCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/cover/CoverMsgList;->DEFAULT_AVATAR_IMAGE:[I

    return-void

    :array_0
    .array-data 4
        0x7f020282
        0x7f020283
        0x7f020284
        0x7f020285
        0x7f020286
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/cover/CoverMsgList;->mContactCount:I

    sput-object p1, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static RemoveCoverMsgList(Landroid/content/Context;)V
    .locals 3

    const-string v1, "Mms/CoverMsgList"

    const-string v2, "RemoveCoverMsgList"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "new_message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getContactHeaderString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0100

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    const v1, 0x7f0c013b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0163

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDefaultAvatarImageId(J)I
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x5

    rem-long v1, p1, v1

    long-to-int v0, v1

    :cond_0
    sget-object v1, Lcom/android/mms/cover/CoverMsgList;->DEFAULT_AVATAR_IMAGE:[I

    aget v1, v1, v0

    return v1
.end method

.method private static isLockScreenMesagePref(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/cover/CoverMsgList;->isLockScreenMesagePref(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static isLockScreenMesagePref(Landroid/content/Context;I)Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v2, "pref_key_enable_preview_message_sim2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    const-string v2, "Mms/CoverMsgList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLockScreenMesagePref sEnablePreview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Mms/CoverMsgList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLockScreenMesagePref simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "pref_key_enable_preview_message"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private updateAvatarView(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;JI)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_4

    const/4 v3, 0x0

    invoke-static {p4, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact;->getAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    const/4 v3, 0x4

    if-ne p7, v3, :cond_3

    const v3, 0x7f02027c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0, p5, p6}, Lcom/android/mms/cover/CoverMsgList;->getDefaultAvatarImageId(J)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    :goto_1
    const v3, 0x7f0b0320

    const-string v4, "setImageBitmap"

    invoke-virtual {p2, v3, v4, v1}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    const/4 v3, 0x2

    if-ne p7, v3, :cond_1

    const v3, 0x7f020287

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_4
    const v3, 0x7f0202b1

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public makeCoverMsgList(Landroid/content/Context;ILjava/lang/String;ILcom/android/mms/transaction/MessagingNotification$NotificationInfo;ZLandroid/app/PendingIntent;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/mms/cover/CoverMsgList;->makeCoverMsgList(Landroid/content/Context;ILjava/lang/String;ILcom/android/mms/transaction/MessagingNotification$NotificationInfo;ZLandroid/app/PendingIntent;I)V

    return-void
.end method

.method public makeCoverMsgList(Landroid/content/Context;ILjava/lang/String;ILcom/android/mms/transaction/MessagingNotification$NotificationInfo;ZLandroid/app/PendingIntent;I)V
    .locals 18

    const-string v3, "Mms/CoverMsgList"

    const-string v4, "updateCoverMsgList"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3}, Lcom/android/mms/cover/CoverMsgList;->getContactHeaderString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p5 .. p5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v15

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    const/4 v14, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-static {v0, v1}, Lcom/android/mms/cover/CoverMsgList;->isLockScreenMesagePref(Landroid/content/Context;I)Z

    move-result v14

    :goto_0
    if-nez v14, :cond_4

    const/high16 v3, 0x7f0c0000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x1

    move/from16 v0, p2

    if-le v0, v3, :cond_3

    const v3, 0x7f0c0360

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_1
    sget-object v3, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    :cond_0
    new-instance v5, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040090

    invoke-direct {v5, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0b0321

    move-object/from16 v0, v17

    invoke-virtual {v5, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0b0322

    invoke-virtual {v5, v3, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0b0323

    sget-object v4, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    move-wide v0, v15

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v14, :cond_1

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-virtual/range {p5 .. p5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    invoke-direct/range {v3 .. v10}, Lcom/android/mms/cover/CoverMsgList;->updateAvatarView(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;JI)V

    :cond_1
    :goto_2
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    const-string v4, "new_message"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "visibility"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "remote"

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "count"

    move/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v13, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "contentIntent"

    move-object/from16 v0, p7

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v3, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/mms/cover/CoverMsgList;->isLockScreenMesagePref(Landroid/content/Context;)Z

    move-result v14

    goto/16 :goto_0

    :cond_3
    const v3, 0x7f0c01b8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p2

    if-le v0, v3, :cond_6

    const v3, 0x7f0c0360

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_5
    move-object/from16 v12, p3

    goto/16 :goto_1

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v17

    :goto_3
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_7
    move-object/from16 v17, p3

    goto :goto_3

    :cond_8
    sget-object v3, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCoverType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    new-instance v5, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/android/mms/cover/CoverMsgList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040091

    invoke-direct {v5, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0b0322

    const v4, 0x7f0c0360

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
