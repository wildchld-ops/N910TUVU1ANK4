.class public interface abstract Lcom/sec/ims/client/caps/ServiceContract$QueryUri;
.super Ljava/lang/Object;
.source "ServiceContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/caps/ServiceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryUri"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.serviceprovider"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final INCALL_URI:Landroid/net/Uri;

.field public static final LOOKUP_URI:Landroid/net/Uri;

.field public static final OWN_CAPS_URI:Landroid/net/Uri;

.field public static final SIP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sip"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->SIP_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->LOOKUP_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "own"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->OWN_CAPS_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "incall"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract$QueryUri;->INCALL_URI:Landroid/net/Uri;

    return-void
.end method
