.class public Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShakeTutorialProgressCategory"
.end annotation


# instance fields
.field private mProgress:Z

.field final synthetic this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    invoke-direct {p0, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    const v0, 0x7f0401d5

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f0b0489

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b0488

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method
