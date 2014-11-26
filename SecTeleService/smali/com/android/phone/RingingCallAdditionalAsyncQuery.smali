.class public Lcom/android/phone/RingingCallAdditionalAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "RingingCallAdditionalAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mListener:Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

.field private mQueryType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RingingCallAdditionalAsyncQuery"

    sput-object v0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V
    .locals 0
    .param p1    # Landroid/content/ContentResolver;
    .param p2    # I
    .param p3    # Lcom/android/internal/telephony/CallerInfo;
    .param p4    # Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput p2, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mQueryType:I

    iput-object p3, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p4, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method public static startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V
    .locals 10
    .param p0    # Landroid/content/ContentResolver;
    .param p1    # I
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    .param p4    # Lcom/android/internal/telephony/Connection;

    new-instance v0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;-><init>(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "starred"

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    goto :goto_0

    :sswitch_1
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "group_ringtone"

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND group_ringtone IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "data1 LIMIT 1 "

    goto :goto_0

    :sswitch_2
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "group_vibration"

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND group_vibration IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "data1 LIMIT 1 "

    goto/16 :goto_0

    :sswitch_3
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sec_custom_vibration"

    aput-object v2, v4, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    sget-object v0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mQueryType:I

    iget-object v2, p0, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v0, v1, v2, p3, p2}, Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;->onRingingCallAdditionalQueryComplete(ILcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
