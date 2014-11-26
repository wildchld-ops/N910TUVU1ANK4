.class public interface abstract Lcom/android/mms/freemessage/FreeMessageProperties$MediaColumns;
.super Ljava/lang/Object;
.source "FreeMessageProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/freemessage/FreeMessageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaColumns"
.end annotation


# static fields
.field public static final COMPLETE_COUNT:Ljava/lang/String; = "complete_cnt"

.field public static final CONTENT_COUNT:Ljava/lang/String; = "content_cnt"

.field public static final CONTENT_MEDIA_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_INBOX:Landroid/net/Uri;

.field public static final CONTENT_URI_OUTBOX:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final EXPIRE_DATE:Ljava/lang/String; = "expire_date"

.field public static final MEDIA_AUTHORITY:Ljava/lang/String; = "com.sec.orca.freemessage"

.field public static final MEDIA_BOX:Ljava/lang/String; = "media_box"

.field public static final NOTI_ID:Ljava/lang/String; = "noti_id"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final RECIPIENT_IDS:Ljava/lang/String; = "recipient_ids"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final WEB_AUTH_TOKEN:Ljava/lang/String; = "web_auth_token"

.field public static final WEB_URL:Ljava/lang/String; = "web_url"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.sec.orca.freemessage/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$MediaColumns;->CONTENT_MEDIA_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$MediaColumns;->CONTENT_MEDIA_URI:Landroid/net/Uri;

    const-string v1, "inbox"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$MediaColumns;->CONTENT_URI_INBOX:Landroid/net/Uri;

    sget-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$MediaColumns;->CONTENT_MEDIA_URI:Landroid/net/Uri;

    const-string v1, "outbox"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$MediaColumns;->CONTENT_URI_OUTBOX:Landroid/net/Uri;

    return-void
.end method
