.class Lcom/android/settings/PenAirViewHelp$3;
.super Ljava/lang/Object;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PenAirViewHelp$3;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$3;->this$0:Lcom/android/settings/PenAirViewHelp;

    const-string v1, "speed_dial_preview"

    # invokes: Lcom/android/settings/PenAirViewHelp;->handleOnClickAction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/PenAirViewHelp;->access$000(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V

    return-void
.end method
