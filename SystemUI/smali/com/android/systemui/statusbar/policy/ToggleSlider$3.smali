.class Lcom/android/systemui/statusbar/policy/ToggleSlider$3;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$3;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$3;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/policy/ToggleSlider;->adjustProgress(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$700(Lcom/android/systemui/statusbar/policy/ToggleSlider;I)V

    return-void
.end method
