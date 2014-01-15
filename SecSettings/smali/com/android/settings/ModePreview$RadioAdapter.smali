.class public Lcom/android/settings_ex/ModePreview$RadioAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/ModePreview;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ModePreview;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings_ex/ModePreview$RadioAdapter;->this$0:Lcom/android/settings_ex/ModePreview;

    .line 271
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 273
    iput-object p2, p0, Lcom/android/settings_ex/ModePreview$RadioAdapter;->mContext:Landroid/content/Context;

    .line 274
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 277
    if-nez p2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/settings_ex/ModePreview$RadioAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 279
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f0400bb

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 283
    .end local v0           #li:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ModePreview$RadioAdapter;->this$0:Lcom/android/settings_ex/ModePreview;

    #getter for: Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v2}, Lcom/android/settings_ex/ModePreview;->access$000(Lcom/android/settings_ex/ModePreview;)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 284
    iget-object v2, p0, Lcom/android/settings_ex/ModePreview$RadioAdapter;->this$0:Lcom/android/settings_ex/ModePreview;

    #getter for: Lcom/android/settings_ex/ModePreview;->mAutomatic:Landroid/widget/CheckedTextView;
    invoke-static {v2}, Lcom/android/settings_ex/ModePreview;->access$000(Lcom/android/settings_ex/ModePreview;)Landroid/widget/CheckedTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
