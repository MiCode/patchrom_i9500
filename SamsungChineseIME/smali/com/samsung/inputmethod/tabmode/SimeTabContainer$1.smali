.class Lcom/samsung/inputmethod/tabmode/SimeTabContainer$1;
.super Ljava/lang/Object;
.source "SimeTabContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->dimTabContainer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 666
    const/4 v0, 0x1

    return v0
.end method
