.class public final Lcom/samsung/rcs/urigenerator/UriGeneratorContract;
.super Ljava/lang/Object;
.source "UriGeneratorContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/rcs/urigenerator/UriGeneratorContract$Columns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.urigenerator.provider"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final IMS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.urigenerator.provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/rcs/urigenerator/UriGeneratorContract;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/rcs/urigenerator/UriGeneratorContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "ims"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/rcs/urigenerator/UriGeneratorContract;->IMS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
