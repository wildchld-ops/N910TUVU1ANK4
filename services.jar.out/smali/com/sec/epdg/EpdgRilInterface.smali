.class public interface abstract Lcom/sec/epdg/EpdgRilInterface;
.super Ljava/lang/Object;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;,
        Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;,
        Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;,
        Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;,
        Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;,
        Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;
    }
.end annotation


# virtual methods
.method public abstract triggerHandover(IZ)V
.end method

.method public abstract updateApnConnStatus(IZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;ZZ)V
.end method

.method public abstract updateEpdgAvailability(Z)V
.end method
