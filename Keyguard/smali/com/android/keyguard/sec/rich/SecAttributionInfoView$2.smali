.class Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;
.super Ljava/lang/Object;
.source "SecAttributionInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLiveviewViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

.field final synthetic val$locationUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iput-object p2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;->val$locationUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;->val$locationUrl:Ljava/lang/String;

    # invokes: Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$200(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V

    return-void
.end method
