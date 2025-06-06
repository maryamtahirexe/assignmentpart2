const InputField = ({ label, type = "text", id, placeholder, value, onChange, name }) => {
  return (
    <div className="mb-4">
      <label htmlFor={id} className="block text-highlight text-base mb-1">{label}</label>
      <input
        id={id}
        name={name}
        className="shadow bg-gray-300 appearance-none border border-gray-600 rounded w-full py-2 px-3 text-white leading-tight focus:outline-none focus:shadow-outline focus:border-highlight"
        type={type}
        placeholder={placeholder}
        value={value}
        onChange={onChange}
        autoComplete="off"
      />
    </div>
  );
};

export default InputField;
