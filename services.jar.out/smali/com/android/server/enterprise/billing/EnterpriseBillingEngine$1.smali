.class Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$1;
.super Landroid/telephony/PhoneStateListener;
.source "EnterpriseBillingEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleAllprofiles()V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V

    :cond_0
    return-void
.end method
