.class public Landroid/net/wifi/WifiChannel$ChannelFlag;
.super Ljava/lang/Object;
.source "WifiChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelFlag"
.end annotation


# static fields
.field public static final NO_FLAG:I = 0x0

.field public static final NO_IBSS:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "flag"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NO_IBSS"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiChannel$ChannelFlag;->strings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
