.class public interface abstract Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;
.super Ljava/lang/Object;
.source "FreeMessageProperties.java"

# interfaces
.implements Lcom/android/mms/freemessage/FreeMessageProperties$ImColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/freemessage/FreeMessageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FreeMessageChat"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MESSAGE_SERVICE_TYPE:Ljava/lang/String; = "message_service_type"

.field public static final TYPE_STR:Ljava/lang/String; = "im"

.field public static final URI_SCHEDULED_IM:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://im/chat/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://im/scheduled_chat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    return-void
.end method
