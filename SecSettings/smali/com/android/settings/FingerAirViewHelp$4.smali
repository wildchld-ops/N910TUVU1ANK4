.class Lcom/android/settings/FingerAirViewHelp$4;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$4;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$4;->this$0:Lcom/android/settings/FingerAirViewHelp;

    const-string v1, "progress_bar_preview"

    # invokes: Lcom/android/settings/FingerAirViewHelp;->handleOnClickAction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V

    return-void
.end method
