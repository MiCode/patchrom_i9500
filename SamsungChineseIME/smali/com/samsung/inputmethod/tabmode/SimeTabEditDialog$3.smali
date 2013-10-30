.class Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$3;
.super Ljava/lang/Object;
.source "SimeTabEditDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->createListView()Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$3;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v2

    .line 144
    .local v2, modeID:I
    const/high16 v3, 0x1111

    if-eq v2, v3, :cond_0

    const v3, 0x61011000

    if-ne v2, v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const v3, 0x7f0c003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object v0, v3

    check-cast v0, Landroid/widget/CheckBox;

    .line 149
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 153
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 157
    .local v1, isChecked:Z
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v3

    invoke-virtual {v3, p3, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->setClickValueByIndex(IZ)V

    goto :goto_0
.end method
