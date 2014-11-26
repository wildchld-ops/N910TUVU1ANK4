.class abstract Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.super Ljava/lang/Object;
.source "PedometerVendorImpl.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method register()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method requestToUpdate()V
    .locals 0

    return-void
.end method

.method setLoggingMode(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method setProperty(IDD)V
    .locals 0
    .param p1    # I
    .param p2    # D
    .param p4    # D

    return-void
.end method

.method unregister()V
    .locals 0

    return-void
.end method
