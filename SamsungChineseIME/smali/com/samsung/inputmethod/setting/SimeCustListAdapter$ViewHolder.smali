.class public final Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimeCustListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeCustListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public img:Landroid/widget/ImageView;

.field public radio:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/setting/SimeCustListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->this$0:Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
