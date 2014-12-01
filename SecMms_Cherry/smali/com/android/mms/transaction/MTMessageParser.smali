.class public Lcom/android/mms/transaction/MTMessageParser;
.super Ljava/lang/Object;
.source "MTMessageParser.java"


# static fields
.field public static final MT_URI:Ljava/lang/String; = "content://com.samsung.mobileTracker.provider.MTContentProvider"

.field static final PASSWD_KEY:Ljava/lang/String; = "passwd"

.field private static final RM_CMD_DEACTCALLFWD:Ljava/lang/String; = "DEACTCALLFWD"

.field private static final RM_CMD_DELUSRDATA:Ljava/lang/String; = "DELUSRDATA"

.field private static final RM_CMD_GETLOCINFO:Ljava/lang/String; = "GETLOCINFO"

.field private static final RM_CMD_GETPBK:Ljava/lang/String; = "GETPBK"

.field private static final RM_CMD_GETPBKA:Ljava/lang/String; = "GETPBKA"

.field private static final RM_CMD_GETPBKG:Ljava/lang/String; = "GETPBKG"

.field private static final RM_CMD_GETPBKW:Ljava/lang/String; = "GETPBKW"

.field private static final RM_CMD_HIDEUSRDATA:Ljava/lang/String; = "HIDEUSRDATA"

.field private static final RM_CMD_RESETMSGFWD:Ljava/lang/String; = "RESETMSGFWD"

.field private static final RM_CMD_RESETPVL:Ljava/lang/String; = "RESETPVL"

.field private static final RM_CMD_SETCALLFWD:Ljava/lang/String; = "SETCALLFWD"

.field private static final RM_CMD_SETMSGFWD:Ljava/lang/String; = "SETMSGFWD"

.field private static final RM_CMD_SETPL:Ljava/lang/String; = "SETPL"

.field private static final RM_CMD_SETPLD:Ljava/lang/String; = "SETPLD"

.field private static final RM_CMD_SETPVL:Ljava/lang/String; = "SETPVL"

.field private static final RM_CMD_UNHIDEUSRDATA:Ljava/lang/String; = "UNHIDEUSRDATA"

.field private static final TAG:Ljava/lang/String; = "Mms/MTMessageParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMTCmd(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v5, v1, v4

    const-string v6, "SETPL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    return v3

    :cond_2
    aget-object v5, v1, v4

    const-string v6, "SETPLD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "SETPVL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "RESETPVL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "HIDEUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "UNHIDEUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "DELUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "GETPBKA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "GETPBKG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "GETPBKW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "GETPBK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "SETCALLFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "DEACTCALLFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "SETMSGFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "RESETMSGFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v1, v4

    const-string v6, "GETLOCINFO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    goto/16 :goto_1

    :cond_3
    move v3, v4

    goto/16 :goto_1
.end method

.method private static isMTOn(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v6, "status"

    const-string v0, "content://com.samsung.mobileTracker.provider.MTContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    :goto_0
    return v0

    :cond_2
    :try_start_1
    const-string v0, "status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v9

    goto :goto_0
.end method

.method public static messageParser(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/mms/util/TelephonyUtils;->isSosMessage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isContactMessage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_3

    const-string v3, "Mms/MTMessageParser"

    const-string v4, "Mobile Tracker message - received 0x1b"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/mms/transaction/MTMessageParser;->isMTOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/android/mms/transaction/MTMessageParser;->isMTCmd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Mms/MTMessageParser"

    const-string v4, "Mobile Tracker message - received manual command"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_4
    const-string v2, "Mms/MTMessageParser"

    const-string v3, "Mobile Tracker - Normal msg received"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static msgFwdFlag(Landroid/content/Context;)Z
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    const-string v6, "MsgFwdStatus"

    const-string v0, "content://com.samsung.mttwo.service.MTContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MsgFwdStatus"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :cond_0
    if-eqz v7, :cond_1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v8

    move v0, v10

    goto :goto_0

    :cond_3
    move v0, v10

    goto :goto_0

    :cond_4
    move v0, v10

    goto :goto_0
.end method
