function validateForm(data) {
  if (!data.name || !data.length || !data.category_id) {
    return {
      success: false,
      error: "Fields are required",
    };
  }
  return {
    success: true,
    data: data,
  };
}

export { validateForm };
