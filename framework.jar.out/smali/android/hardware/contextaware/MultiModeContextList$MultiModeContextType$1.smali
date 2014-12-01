.class final enum Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType$1;
.super Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
.source "MultiModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/MultiModeContextList$1;)V

    return-void
.end method


# virtual methods
.method public final getParserHandler()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    return-object v0
.end method
