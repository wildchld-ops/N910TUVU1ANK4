.class Lcom/android/systemui/statusbar/phone/NavigationBarView$4;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;->watchForAccessibilityChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # invokes: Lcom/android/systemui/statusbar/phone/NavigationBarView;->enableAccessibility(Z)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)V

    return-void
.end method
