.class Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedCallSstreamRunnable"
.end annotation


# instance fields
.field c:Lcom/android/internal/telephony/Connection;

.field final date:J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V
    .locals 0
    .param p2    # Lcom/android/internal/telephony/Connection;
    .param p3    # J

    iput-object p1, p0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->c:Lcom/android/internal/telephony/Connection;

    iput-wide p3, p0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;->date:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
