.class public Lcom/android/phone/NetworkQueryService2$LocalBinder;
.super Landroid/os/Binder;
.source "NetworkQueryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService2;


# direct methods
.method public constructor <init>(Lcom/android/phone/NetworkQueryService2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkQueryService2$LocalBinder;->this$0:Lcom/android/phone/NetworkQueryService2;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
