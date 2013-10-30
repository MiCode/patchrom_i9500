.class Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimeTabListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;)V

    return-void
.end method
