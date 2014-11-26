.class public Lcom/android/mms/transaction/LmsObserverCTC;
.super Ljava/lang/Object;
.source "LmsObserverCTC.java"


# static fields
.field private static final DB_FIELD_ADDRESS:Ljava/lang/String; = "address"

.field private static final DB_FIELD_REFNUM:Ljava/lang/String; = "reference_number"

.field private static final DB_FIELD_URI:Ljava/lang/String; = "uri"

.field private static final INCOMPLETE_LMS_RECORDS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "Mms/LmsObserverCTC"

.field public static sLmsReceivingStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://sms/incomplete_lms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/LmsObserverCTC;->INCOMPLETE_LMS_RECORDS_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/LmsObserverCTC;->sLmsReceivingStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dbSelectionForLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/util/Pair;
    .locals 4
    .param p0    # Landroid/telephony/LmsTokenCTC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/LmsTokenCTC;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "address= ? AND reference_number = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getLmsReceivingStatus()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/transaction/LmsObserverCTC;->sLmsReceivingStatus:Z

    return v0
.end method

.method public static onLmsReceived(Landroid/net/Uri;Landroid/telephony/LmsTokenCTC;I)V
    .locals 13
    .param p0    # Landroid/net/Uri;
    .param p1    # Landroid/telephony/LmsTokenCTC;
    .param p2    # I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x1

    const-string v1, "Mms/LmsObserverCTC"

    const-string v2, "onLmsReceived"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "Mms/LmsObserverCTC"

    const-string v2, "onLmsReceived: contentResolver is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/mms/transaction/LmsObserverCTC;->dbSelectionForLmsToken(Landroid/telephony/LmsTokenCTC;)Landroid/util/Pair;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v1, Lcom/android/mms/transaction/LmsObserverCTC;->INCOMPLETE_LMS_RECORDS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "uri"

    aput-object v3, v2, v4

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v1, "Mms/LmsObserverCTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLmsReceived: hasRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const-string v1, "Mms/LmsObserverCTC"

    const-string v2, "onLmsReceived: remove previously assembled message at oldUri"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Lcom/android/mms/transaction/LmsObserverCTC;->setLmsReceivingStatus(Z)V

    invoke-virtual {v0, v9, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    if-ne p2, v12, :cond_6

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "uri"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_5

    const-string v1, "Mms/LmsObserverCTC"

    const-string v2, "onLmsReceived: update incomplete LMS record with newUri"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/transaction/LmsObserverCTC;->INCOMPLETE_LMS_RECORDS_URI:Landroid/net/Uri;

    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    const-string v1, "Mms/LmsObserverCTC"

    const-string v2, "onLmsReceived: create incomplete LMS record with newUri"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "address"

    iget-object v2, p1, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reference_number"

    iget v2, p1, Landroid/telephony/LmsTokenCTC;->refNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/mms/transaction/LmsObserverCTC;->INCOMPLETE_LMS_RECORDS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_6
    if-eqz v8, :cond_0

    const-string v1, "Mms/LmsObserverCTC"

    const-string v2, "onLmsReceived: remove incomplete LMS record"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/transaction/LmsObserverCTC;->INCOMPLETE_LMS_RECORDS_URI:Landroid/net/Uri;

    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setLmsReceivingStatus(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/transaction/LmsObserverCTC;->sLmsReceivingStatus:Z

    return-void
.end method
