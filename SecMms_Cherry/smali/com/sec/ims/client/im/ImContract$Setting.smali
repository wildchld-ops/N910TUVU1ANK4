.class public final Lcom/sec/ims/client/im/ImContract$Setting;
.super Ljava/lang/Object;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# static fields
.field public static final BOOL_VALUE:Ljava/lang/String; = "bool_value"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final FLOAT_VALUE:Ljava/lang/String; = "float_value"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final INT_VALUE:Ljava/lang/String; = "int_value"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String; = "name"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final STRING_VALUE:Ljava/lang/String; = "string_value"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
