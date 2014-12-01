.class public Lcom/sec/android/inputmethod/menu/PopupList$Item;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/menu/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/inputmethod/menu/PopupList$Item;->id:I

    iput-object p2, p0, Lcom/sec/android/inputmethod/menu/PopupList$Item;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/menu/PopupList$Item;->title:Ljava/lang/String;

    return-void
.end method
