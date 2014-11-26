.class public interface abstract Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;
.super Ljava/lang/Object;
.source "FreeMessageProperties.java"

# interfaces
.implements Lcom/android/mms/freemessage/FreeMessageProperties$FtColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/freemessage/FreeMessageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FreeMessageFT"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TYPE_STR:Ljava/lang/String; = "ft"

.field public static final URI_FILE:Landroid/net/Uri;

.field public static final URI_THUMBNAIL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://im/ft/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://im/ft_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->URI_FILE:Landroid/net/Uri;

    const-string v0, "content://im/ft_thumbnail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->URI_THUMBNAIL:Landroid/net/Uri;

    return-void
.end method
