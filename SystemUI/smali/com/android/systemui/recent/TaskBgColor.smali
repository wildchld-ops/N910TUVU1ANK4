.class public Lcom/android/systemui/recent/TaskBgColor;
.super Ljava/lang/Object;
.source "TaskBgColor.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recent/TaskBgColor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public extractColor(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/recent/TaskDescription;)I
    .locals 1

    const v0, -0xffaa67

    return v0
.end method
