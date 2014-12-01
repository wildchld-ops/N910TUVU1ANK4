.class Lcom/android/settings/fingerprint/PaypalPayment$splashhandler;
.super Ljava/lang/Object;
.source "PaypalPayment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/PaypalPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "splashhandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/PaypalPayment;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/PaypalPayment$splashhandler;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/PaypalPayment;Lcom/android/settings/fingerprint/PaypalPayment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/PaypalPayment$splashhandler;-><init>(Lcom/android/settings/fingerprint/PaypalPayment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$splashhandler;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->updateActivity()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$100(Lcom/android/settings/fingerprint/PaypalPayment;)V

    return-void
.end method
